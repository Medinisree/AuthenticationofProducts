import java.util.ArrayList;
import java.util.Date;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

class Block {
    public String hash;
    public String previousHash;
    private String data;
    private long timestamp;
    private int nonce;

    public Block(String data, String previousHash) {
        this.data = data;
        this.previousHash = previousHash;
        this.timestamp = new Date().getTime();
        this.nonce = 0;
        this.hash = calculateHash();
    }

    public String calculateHash() {
        String dataToHash = previousHash + timestamp + nonce + data;
        try {
            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            byte[] bytes = digest.digest(dataToHash.getBytes());
            StringBuilder hexString = new StringBuilder();
            for (byte b : bytes) {
                String hex = Integer.toHexString(0xff & b);
                if (hex.length() == 1) hexString.append('0');
                hexString.append(hex);
            }
            return hexString.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }

    public void mineBlock(int difficulty) {
        String target = new String(new char[difficulty]).replace('\0', '0');
        while (!hash.substring(0, difficulty).equals(target)) {
            nonce++;
            hash = calculateHash();
        }
        System.out.println("Block Mined!!! : " + hash);
    }
}

class Blockchain {
    private ArrayList<Block> blockchain;
    private int difficulty;

    public Blockchain(int difficulty) {
        this.blockchain = new ArrayList<>();
        this.difficulty = difficulty;
        addGenesisBlock();
    }

    private void addGenesisBlock() {
        Block genesisBlock = new Block("Genesis Block", "0");
        genesisBlock.mineBlock(difficulty);
        blockchain.add(genesisBlock);
    }

    public void addBlock(String data) {
        Block lastBlock = blockchain.get(blockchain.size() - 1);
        Block newBlock = new Block(data, lastBlock.hash);
        newBlock.mineBlock(difficulty);
        blockchain.add(newBlock);
    }

    public boolean isChainValid() {
        for (int i = 1; i < blockchain.size(); i++) {
            Block currentBlock = blockchain.get(i);
            Block previousBlock = blockchain.get(i - 1);

            if (!currentBlock.hash.equals(currentBlock.calculateHash())) {
                System.out.println("Current Hashes not equal");
                return false;
            }

            if (!previousBlock.hash.equals(currentBlock.previousHash)) {
                System.out.println("Previous Hashes not equal");
                return false;
            }
        }
        return true;
    }

    public ArrayList<String> printChain() {
    	ArrayList<String> arrayList = new ArrayList<>();
         for (Block block : blockchain) {
            System.out.println("Hash: " + block.hash);
            System.out.println("Previous Hash: " + block.previousHash);
            //System.out.println("Data: " + block.data); //Optional to print data
            arrayList.add(block.hash);
            arrayList.add(block.previousHash);
            System.out.println("-----------------------");
        }
         return arrayList;
    }
}

public class BlockChainApp {
    public static void main(String[] args) {
      
    }
}