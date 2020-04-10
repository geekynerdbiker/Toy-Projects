package ScreenRecorder;

import org.jcodec.api.awt.AWTSequenceEncoder;

import javax.swing.*;

import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import java.io.File;
import java.io.IOException;

import java.util.Timer;
import java.util.logging.Level;
import java.util.logging.Logger;

public class UserInterface extends JFrame {
    private JPanel rootPanel;
    private JPanel panelTop;
    private JPanel panelLeft;
    private JPanel panelRight;
    private JLabel Status;
    private JLabel Time;
    private JButton startRecordButton;
    private JButton stopRecordButton;

    Timer timerRecord;
    Timer timerCount;

    AWTSequenceEncoder encoder;
    ScreenRecorder recorderTask;
    //AudioRecorder audioRecorder;
    TimerCount countTask;

    Rectangle rectangle;
    File f;

    String execConvertToAVI = "ffmpeg -i mp4_video_output.mp4 -q:v 0 avi_video_output.avi";
    String execMuxAudioVideo = "ffmpeg -i avi_video_output.avi -i audio_output.wav -c:v copy -c:a aac -strict experimental video_output.mp4";

    UserInterface() {
        super("Test UI");
        Status.setText("Sleep...");
        Time.setText("Not Recording");
        this.setContentPane(this.rootPanel);
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.pack();

        startRecordButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                initScreenRecorderObjects("testVideo");
                scheduleTimerTasks();

                //audioRecorder = new AudioRecorder();
                //audioRecorder.start();
            }
        });

        stopRecordButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                stopScreenRecording();
                //audioRecorder.stopRecording();

                //ExecFfmpeg.executeFfMpeg(execConvertToAVI);
                //ExecFfmpeg.executeFfMpeg(execMuxAudioVideo);
            }
        });
    }

    private void initScreenRecorderObjects(String fileName) {

        rectangle = new Rectangle(Toolkit.getDefaultToolkit().getScreenSize());
        f = new File(fileName + ".mp4");

        try {
            encoder = AWTSequenceEncoder.createSequenceEncoder(f, 5);
        } catch (IOException ex) {
            Logger.getLogger(UserInterface.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    private void scheduleTimerTasks() {

        boolean isRecording = true;

        int delay = 1000;

        RecordTimer.initTime();

        timerRecord = new java.util.Timer("Thread TimerRecord");
        timerCount = new Timer("Thread TimerCount");

        recorderTask = new ScreenRecorder(encoder, rectangle);
        //countTask = new TimerCount(Time);

        timerRecord.scheduleAtFixedRate(recorderTask, 0, delay);
        //timerCount.scheduleAtFixedRate(countTask, 0, 1000);

        Status.setText("recorder Started...");

    }

    private void stopScreenRecording() {

        RecordTimer.stop();

        Status.setText("Recording Stopped");
        Time.setText("" + RecordTimer.getTimeInSec());

        timerCount.cancel();
        timerCount.purge();

        timerRecord.cancel();
        timerRecord.purge();

        recorderTask.cancel();
        //countTask.cancel();

        try {

            encoder.finish();// finish  encoding
            System.out.println("encoding finish " + (RecordTimer.getTimeInSec()) + "s");
            Status.setText("recorder Stopped...");
            Time.setText("" + RecordTimer.getTimeInMin() + "min");

        } catch (IOException ex) {
            Logger.getLogger(UserInterface.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public static void main(String[] args) {
        UserInterface userInterface = new UserInterface();
        userInterface.setVisible(true);
    }

}