package ScreenRecorder;

public class RecordTimer {
    private static long startTime;
    private static long stopTime;

    public static void initTime() {
        startTime = 0;
        stopTime = 0;
    }

    public static void start() {
        startTime = System.currentTimeMillis();
    }
    public static void stop() {
        stopTime = System.currentTimeMillis();
    }

    public static long getTimeInMilliSec() {
        return stopTime - startTime;
    }

    public static long getTimeInSec() {
        return getTimeInMilliSec() / 1000;
    }

    public static long getTimeInMin() {
        return getTimeInMilliSec() / 60000;
    }
}
