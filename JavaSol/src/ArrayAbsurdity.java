/**
 * Created by napear on 6/23/16.
 */
import java.io.*;
import java.util.Arrays;

public class ArrayAbsurdity {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        String dupe = null;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            String[] input = line.split(";");
            String[] values = input[1].split(",");
            Arrays.sort(values);
            for (int i = 0; i < values.length-1; i++) {
                if (values[i].equals(values[i + 1])) {
                    dupe = values[i];
                    break;
                }
            }
            System.out.println(dupe);
        }
    }
}
