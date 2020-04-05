package com.recorder;

import java.awt.AWTException;
import java.awt.Rectangle;
import java.awt.Robot;
import java.awt.Toolkit;
import java.awt.image.BufferedImage;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

import java.util.List;
import java.util.ArrayList;

import org.jcodec.api.SequenceEncoder;
import org.jcodec.api.awt.AWTSequenceEncoder;
import org.jcodec.common.io.NIOUtils;
import org.jcodec.common.model.Rational;

public class Main {

    public static void makeVideoFromImages(List<BufferedImage> imageList, File file) throws IOException {
        AWTSequenceEncoder sequenceEncoder = AWTSequenceEncoder.createSequenceEncoder(file, 25);

        for( int i = 0; i < imageList.size(); i++ ) {
            sequenceEncoder.encodeImage(imageList.get(i));
            System.out.println("list encode " + i);
        }
        sequenceEncoder.finish();
    }

    public static void main(String[] args) throws AWTException, IOException {
        List<BufferedImage> imageList = new ArrayList<>();

        Rectangle screen = new Rectangle(Toolkit.getDefaultToolkit().getScreenSize());
        Robot robot = new Robot();

        File file = new File("TextVideo.mp4");
        System.out.println("Getting screen image...");

        int count = 0;
        while (count < 100) {
            BufferedImage image = robot.createScreenCapture(screen);
            imageList.add(image);

            count++;
        }

        makeVideoFromImages(imageList, file);
    }
}
