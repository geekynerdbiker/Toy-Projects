package ScreenRecorder;

import java.util.TimerTask;
import javax.swing.JLabel;

public class TimerCount extends TimerTask{
    JLabel label;
    int timeInSec = 0;

    public TimerCount(JLabel jLabel) {
        label = jLabel;
    }
    
    @Override
    public void run() {
        label.setText(""+timeInSec+"s");
        timeInSec++;
    }
}
