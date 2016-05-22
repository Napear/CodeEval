package HighestScore;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.Arrays;

/**
 * Created by Napear on 1/20/16.
 */
public class HighestScore {

    public static int[][] transpose(int[][] table) {
        int[][] temp = new int[table[0].length][table.length];
        for (int i = 0; i < table.length; i++)
            for (int j = 0; j < table[0].length; j++)
                temp[j][i] = table[i][j];
        return temp;
    }

    public static void main(String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String raw;
        while ((raw = buffer.readLine()) != null) {
            raw = raw.trim();
            int numRows, numCol;
            String[] rawArray = raw.split(" \\| ");
            numRows = rawArray.length;
            numCol = rawArray[0].split(" ").length;
            int[][] table = new int[numRows][numCol];
            int i, j;
            i = j = 0;
            for (String row : rawArray) {
                for (String val : row.trim().split(" ")) {
                    table[i][j] = Integer.parseInt(val);
                    j++;
                }
                j = 0;
                i++;
            }
            int[][] columns = transpose(table);
            String output = "";
            for (int[] column : columns) {
                Arrays.sort(column);
                int temp = column[column.length - 1];
                output += Integer.toString(temp);
                output += " ";
            }
            output = output.trim();
            System.out.println(output);
        }
    }
}

