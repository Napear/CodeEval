/**
 * Created by napear on 6/23/16.
 */

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class SeekForAnIntruder {
    public static void main(String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        Pattern pattern = Pattern.compile("\\b(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}" +
                "(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\b");
        Matcher matcher;
        while ((line = buffer.readLine()) != null) {
            ArrayList<String> foundIPs = new ArrayList<>();
            line = line.trim();
            matcher = pattern.matcher(line);
            if (matcher.find()) {
                foundIPs.add(matcher.group(1));
            }
        }
    }

}
