package util;

import java.awt.*;
import java.awt.event.KeyEvent;

public class PressEnter extends Thread {

    private boolean running = true;

    @Override
    public void run() {
        try {
            Robot robot = new Robot();

            Thread.sleep(4000);
            for (int i = 0; i < 8; i++) {
                System.out.println("press");
                if (!running) {
                    break;
                }
                Thread.sleep(1000);
                robot.keyPress(KeyEvent.VK_ENTER);
                robot.keyRelease(KeyEvent.VK_ENTER);
            }
        }catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void cancel() {
        this.running = false;
    }
}
