
package ScreenRecorder;

import java.awt.Robot;
import java.awt.Rectangle;
import java.awt.AWTException;
import java.awt.image.BufferedImage;

import java.io.IOException;

import java.util.TimerTask;
import java.util.logging.Level;
import java.util.logging.Logger;

import org.jcodec.api.awt.AWTSequenceEncoder;


public class ScreenRecorder extends TimerTask {
    Robot robot;
    BufferedImage image;
    Rectangle screenDimension;
    AWTSequenceEncoder encoder;

    public ScreenRecorder(AWTSequenceEncoder sequenceEncoder, Rectangle rectangle) {
        encoder = sequenceEncoder;
        screenDimension = rectangle;

        try {
            robot = new Robot();
        } catch (AWTException ex) {
            Logger.getLogger(ScreenRecorder.class.getName()).log(Level.SEVERE, null, ex);
        }

        RecordTimer.start();
    }

    @Override
    public void run() {
        System.out.println("Encoiding...");
        image = robot.createScreenCapture(screenDimension);
       
        try {
            encoder.encodeImage(image);
        } catch (IOException ex) {
            Logger.getLogger(ScreenRecorder.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
