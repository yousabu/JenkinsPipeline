package com.mycompany.app;

/**
 * Hello world!
 */
public class App
{

    private final String message = "OHHHHH MG Now you are on the end of Pipeline";

    public App() {}

    public static void main(String[] args) {
        System.out.println(new App().getMessage());
    }

    private final String getMessage() {
        return message;
    }

}
