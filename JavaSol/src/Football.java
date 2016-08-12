/**
 CHALLENGE DESCRIPTION:
 People around the world watch football matches and root for different football
 teams. Some people are fans of Real Madrid, some like Barcelona, some pull for
 Atletico Madrid, while others do not miss a single match with FC Bayern Munich.
 The teams would like to know people in which countries cheer for them. So,
 let’s help them!
 INPUT SAMPLE:
 The first argument is a path to a file. Each row includes a test case with
 lists of countries. Lists are separated by pipelines '|'. Each list includes
 football teams that people in these countries root for.
 */


import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

public class Football {
  public static void main(String[] args) throws IOException {
    File file = new File(args[0]);
    BufferedReader buffer = new BufferedReader(new FileReader(file));
    String line;
    while ((line = buffer.readLine()) != null) {
      line = line.trim();
      String[] countries = line.split(" \\| ");

    }
  }
}