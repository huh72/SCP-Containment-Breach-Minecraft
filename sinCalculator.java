package org.example;
import org.knowm.xchart.QuickChart;
import org.knowm.xchart.SwingWrapper;
import org.knowm.xchart.XYChart;

public class sinCalculator {
    public static void main(String[] args) {

        double multiplier = 200.0;
        double[] iResult = new double[1500];
        double[] sin = new double[1500];
        int iteration = 0;

        for (double i = 0; i < 1.0; i = i + 0.001) {
            iteration++;
            iResult[iteration] = i;
            sin[iteration] = (0.0 + Math.sin(i * multiplier));
            System.out.println("i: " + i + "; SIN: " + (0.0 + Math.sin(i * multiplier)));
        }

        XYChart chart = QuickChart.getChart(
                "i to sin chart",
                "i value",
                "sin value",
                "values",
                iResult,
                sin
        );

        new SwingWrapper<XYChart>(chart).displayChart();

    }
}
