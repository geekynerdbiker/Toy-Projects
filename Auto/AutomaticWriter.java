// PASSWORD: Qd0-75y-GE8-8yY

package com.company;

import org.openqa.selenium.WebElement;
import org.w3c.dom.Element;

import java.io.*;
import java.util.Vector;

public class Main {
    private static BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
    private static BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));

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

    public static void scriptSender(Vector<String> v, WebElement e) throws InterruptedException {
        char[] sentence = v.get(0).toCharArray();

        for(int i = 0; i < sentence.length; i++) {
            e.sendKeys(Character.toString(sentence[i]));
            Thread.sleep(230);
        }
    }

    public static void main(String[] args) throws IOException {
        Selenium macro = new Selenium();
        macro.start();
    }
}
