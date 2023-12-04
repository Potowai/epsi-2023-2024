package org.example;

public class Main {
    public static class Animals{
        private int speed;
        public Animals(){
            this.speed=1;
        }

        @Override
        public String toString() {
            return "Animal : speed=" + this.speed;
        }
    }
    public static void main(String[] args) {
        System.out.println("Hello world!");
        Animals chevre = new Animals();
        System.out.println(chevre);
    }
}

