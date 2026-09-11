class Optimize {
    public static void main(String[] args) {
        System.out.println(foo());
    }

    public static int foo(){
        int a = 5;
        int b = 5;

        if(false){
            return 0;
        }

        return a + b;
    }
}