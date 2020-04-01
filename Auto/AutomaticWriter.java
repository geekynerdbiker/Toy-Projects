package com.company;

import java.io.*;
import java.util.Vector;

public class Main {
    private static BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
    private static BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));
    //private static char [][] keywords = {};

    public static Vector<String> Reader(String path) {
        Vector<String> test = new Vector<String>();

        try {
            File file = new File(path);
            FileReader fileReader = new FileReader(file);
            BufferedReader fileBr = new BufferedReader(fileReader);

            String line = "";
            while ((line = fileBr.readLine()) != null) {
                test.add(new String(line));
            }
            fileBr.close();
        }
        catch (Exception e) {
            e.getStackTrace();
            System.out.println("null");
        }

        return test;
    }

    public static void printScript() {
        Vector<String> v = Reader("src/com/company/answer/script.txt");
        for( int i = 0; i < v.size(); i++ ) {
            char [] sentence = v.get(i).toCharArray();

            for( int j = 0; j < sentence.length; j++ ) {
                System.out.print(sentence[j]);
                try {
                    Thread.sleep(230);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
            // send
            System.out.println();
        }
    }

    public static void main(String[] args) throws IOException {
        Vector<String> string = Reader("src/com/company/answer/test.txt");

        printScript();

/*
        // sample
        for( int i = 0; i < string.size(); i++ )
            System.out.println(string.get(i));

        System.out.println();
        // random sample
       // for( int i = 0; i < 10; i++ )
            System.out.println(string.get((int)(Math.random() * string.size())));
*/
    }
}
