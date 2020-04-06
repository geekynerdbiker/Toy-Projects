package ScreenRecorder;

import java.io.IOException;

public class ExecFfmpeg {
    public static void executeFfMpeg(String exec) {
        Runtime runtime = Runtime.getRuntime();

        try {
            Process process = runtime.exec(exec);

            int exitVal = process.waitFor();
            System.out.println("Exited with error code " + exitVal);

        } catch (IOException ex) {
            ex.printStackTrace();
        } catch (InterruptedException ex) {
            ex.printStackTrace();
        }
    }
}
