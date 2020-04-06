package ScreenRecorder;

import java.awt.AWTException;
import java.awt.Rectangle;
import java.awt.Robot;
import java.awt.Toolkit;
import java.awt.image.BufferedImage;

import java.io.File;
import java.io.IOException;

import java.util.List;
import java.util.ArrayList;

import org.jcodec.api.awt.AWTSequenceEncoder;

public class MainScreenRecorder {

    public void captureImages() throws AWTException, IOException {
        List<BufferedImage> imageList = new ArrayList<>();

        Rectangle screen = new Rectangle(Toolkit.getDefaultToolkit().getScreenSize());
        Robot robot = new Robot();

        File file = new File("TextVideo2.mp4");
        System.out.println("Getting screen image...");

        boolean status = false;
        while (status) {
            BufferedImage image = robot.createScreenCapture(screen);
            imageList.add(image);
        }
    }

    public void makeVideoFromImages(List<BufferedImage> imageList, File file) throws IOException {
        AWTSequenceEncoder sequenceEncoder = AWTSequenceEncoder.createSequenceEncoder(file, 5);

        for( int i = 0; i < imageList.size(); i++ ) {
            sequenceEncoder.encodeImage(imageList.get(i));
            System.out.println("list encode " + i);
        }
        sequenceEncoder.finish();
    }
}
