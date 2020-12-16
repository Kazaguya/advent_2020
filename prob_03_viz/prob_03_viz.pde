import java.io.*;


int xscale;
int yscale;
int x;
int y;
PVector curr;
ArrayList<String> treeRows = new ArrayList<String>();
int count = 0;

void setup() {
    size(496, 1292);
    curr = new PVector(0,0);
    x = 31;
    y = 323;
    xscale = width/x;
    yscale = height/y;

    getTrees(treeRows);

    for (int i = 0; i < x; i++) {
        for (int j = 0; j < y; j++) {
            fill(255);
            if (treeRows.get(j).charAt(i) == '#') fill(255, 0, 0, 100);
            rect(i*xscale, j*yscale, xscale, yscale);
        }
    }
}

void getTrees(ArrayList<String> t) {
    BufferedReader r;
    try {
        r = new BufferedReader(new FileReader("D:/Prog/Advent_Code/prob_03_viz/prob_03.txt"));
        String line = r.readLine();
        while(line != null) {
            t.add(line);
            //println(line);
            line = r.readLine();
        }
        r.close();
    } catch (IOException e) {
        e.printStackTrace();
    }
}



void draw() {
    //background(51);
    fill(0, 0, 255, 100);
    if (treeRows.get((int)curr.y).charAt((int)curr.x) == '#') {
        fill(0,255, 0);
        count++;
    }
    rect(curr.x*xscale, curr.y*yscale, xscale, yscale);
    curr.x++;
    if (curr.x >= x) curr.x = 0;
    // curr.x++;
    // if (curr.x >= x) curr.x = 0;
    // curr.x++;
    // if (curr.x >= x) curr.x = 0;
    // curr.x++;
    // if (curr.x >= x) curr.x = 0;
    // curr.x++;
    // if (curr.x >= x) curr.x = 0;
    // curr.x++;
    // if (curr.x >= x) curr.x = 0;
    // curr.x++;
    // if (curr.x >= x) curr.x = 0;
    curr.y+=2;
    if (curr.y>=y) noLoop();
    println(count);
}
