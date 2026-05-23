package org.example;
import java.awt.Toolkit;
import java.awt.datatransfer.Clipboard;
import java.awt.datatransfer.StringSelection;
import java.util.Scanner;


public class CalculateParticleColor {
    public static void main(String[] args) {

        double finalNumber;
        double colorMaxValue = 255;
        String cmdBasicText = "_CHANNEL : particle minecraft:entity_effect{color:[0.996078431372549, $(value), 1.0, 0.984313725490196],scale:1f}";

        Scanner scanner = new Scanner(System.in);
        int input = scanner.nextInt();
        scanner.close();

        finalNumber = input / colorMaxValue;
        cmdBasicText = cmdBasicText.replace("$(value)", String.valueOf(finalNumber));

        System.out.println( finalNumber );
        System.out.println( cmdBasicText + " (" + input + ")");

        StringSelection selection = new StringSelection(cmdBasicText + " (" + input + ")");
        Clipboard clipboard = Toolkit.getDefaultToolkit().getSystemClipboard();
        clipboard.setContents(selection, null);
    }
}

