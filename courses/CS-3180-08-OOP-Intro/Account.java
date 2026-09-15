
class Transaction {
    int amount;

    public Transaction(int amount){
        this.amount = amount;
    }
}

public class Account {

    // prevent people from accessing via account.balance
    private int balance = 1000;


    // allow anyone to create an account
    public Account(int startingBalance){
        this.balance = startingBalance;
    }

    // public access function
    // allow the world to see
    public int getBalance(){
        return this.balance;
    }

    // private mutator function
    // prevent world from editing
    private void setBalance(int newBalance) {
        if(this.balance - newBalance < 0){
            throw new RuntimeException();
        }

        this.balance = newBalance;
    }

    // enforce the caller to use a method with 
    // other parameters/guards on it
    public void processTransaction(Transaction t) {
        System.out.println("Processing transaction...");
        setBalance(t.amount);
    }
    
}


class Main {
    public static void main(String[] args) {

        Account a = new Account(500);
        // allowed to access public methods
        a.processTransaction(new Transaction(100));


        // does not compile
        // a.balance = 400;
    }
}