// public class Oop {
//     public static void main(String[] args){

//         String student1Name = "Alice";
//         String[] student1Classes = {
//             "CS-1181", 
//             "CS-3180"
//         };

//         String student2Name = "Bob";
//         String[] student2Classes = {
//             "CEG-2350",
//             "CEG-3320"
//         };

//         goToClass(student1Name, student1Classes);
//         goToClass(student2Name, student2Classes);
//     }


//     public static void goToClass(String name, String[] classes){
//         System.out.print(name + " goes to: ");
//         for(int i = 0; i < classes.length; i++){
//             System.out.print(classes[i] + " ");
//         }
//         System.out.println();
//     }
// }

class Student {
    // fields
    String name;
    String[] classes;
    // constructor
    public Student(String name, String[] classes) {
        this.name = name;
        this.classes = classes;
    }
    // method
    public void goToClass(){
        System.out.print(name + " goes to: ");
        for(int i = 0; i < classes.length; i++){
            System.out.print(classes[i] + " ");
        }
        System.out.println();
    }
}

class Oop {
    public static void main(String[] args) {
        Student s1 = new Student("Alice", new String[]{
            "CS-3180", "CS-1181"
        });

        Student s2 = new Student("Bob", new String[]{
            "CEG-2350",
            "CEG-3320"
        });

        s1.goToClass();
        s2.goToClass();
    }
}