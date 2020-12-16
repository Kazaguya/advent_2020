import java.io.*;
import java.util.*;
public class Passports {
    public static void main(String[] args) {
        int count = 0;
        String[] ops = new String[]{"byr","iyr","eyr","hgt","hcl","ecl","pid"/*,"cid"*/};
        ArrayList<String> passports = new ArrayList<>();
        getPorts(passports);
        for (int i = 0; i < passports.size(); i++) {
            if (check(passports.get(i), ops)) count++;
        }

        System.out.println(count);
    }

    static boolean check(String s, String[] ops) {
        String[] data = s.split(" ");
        String temp;
        boolean found;

        if (data.length < 7) return false;

        for (int i = 0; i < ops.length; i++) {
            found = false;
            for (int j = 0; j < data.length; j++) {
                temp = data[j].split(":")[0];
                if (ops[i].equals(temp)) found = true;
            }
            if (!found) return false;
        }
        for (int i = 0; i < data.length; i++) {
            found = false;
            for (int j = 0; j < ops.length; j++) {
                if (data[i].split(":")[0].equals(ops[j]) || data[i].split(":")[0].equals("cid")) found = true;
            }
            if (!found) return false;
            System.out.println(data[i]);
        }
        System.out.println('\n');
        return true;
    }

    static void getPorts(ArrayList<String> t) {
        BufferedReader r;
        try {
            r = new BufferedReader(new FileReader("D:/Prog/Advent_Code/prob_04/input.txt"));
            String line = r.readLine();
            while(line != null) {
                t.add(line);
                // System.out.println(line);
                line = r.readLine();
            }
            r.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        //for (int i = 0; i < t.size(); i++) System.out.println(t.get(i));
    }
}
