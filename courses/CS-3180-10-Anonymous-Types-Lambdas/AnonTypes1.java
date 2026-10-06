interface Drivable {
    public void drive(int distance);
}

class Task implements Runnable {
    private int sleepForSeconds;
    
    public Task(int sleepForSeconds){
        this.sleepForSeconds = sleepForSeconds;
    }

    @Override
    public void run(){
        try {
            Thread.sleep(sleepForSeconds * 1000);
        } catch (InterruptedException e) {
            System.out.println("Something went wrong");
        }
        System.out.println("Done sleeping!");
    } 
}

public class AnonTypes1 {
    public static void main(String[] args) {

        Drivable d = (distance) -> {
            System.out.println("Drives " + distance + " miles");
        };

        d.drive(5);
        // executes code in background
        // Runnable task = new Task(5);
        
        // Thread t = new Thread(task);

        // t.start();


        // Runnable task = new Runnable() {

        //     @Override
        //     public void run() {
        //         try {
        //             Thread.sleep(5 * 1000);
        //         } catch (InterruptedException e) {
        //             System.out.println("Something went wrong");
        //         }
        //         System.out.println("Done sleeping!");
        //     }
        // };

        // Thread t = new Thread(task);
        // t.start();

        Runnable task = () -> {
            try {
                Thread.sleep(5 * 1000);
            } catch (Exception e){}
        };

        Thread t = new Thread(task);
        t.start();
    }
}
