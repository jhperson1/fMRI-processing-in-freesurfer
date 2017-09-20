// use this script to create the subjectname files
// of functional preprocessing

import java.util.*;
import java.lang.*;
import java.io.*;

public class CreateTXT {
    public static void main (String args[]) {
        // https://stackoverflow.com/questions/2885173/how-do-i-create-a-file-and-write-to-it-in-java
        try{
            // Sample for blind subject 1
            // name the file
            PrintWriter writer = new PrintWriter("subjectname-B101", "UTF-8");
            // list, from the SUBJECTS_DIR, the path to get to
            // write the contents of the file
            writer.println("B201_mprage");
            writer.close();

            PrintWriter w2 = new PrintWriter("subjectname-B102", "UTF-8");
            w2.println("B202_mprage");
            w2.close();

            PrintWriter w3 = new PrintWriter("subjectname-B103", "UTF-8");
            w3.println("B203_mprage");
            w3.close();

            PrintWriter w4 = new PrintWriter("subjectname-B104_1", "UTF-8");
            w4.println("B204_mprage");
            w4.close();

            PrintWriter w4_2 = new PrintWriter("subjectname-B104_2", "UTF-8");
            w4_2.println("B204_mprage");
            w4_2.close();

            PrintWriter w5 = new PrintWriter("subjectname-B105", "UTF-8");
            w5.println("B205_mprage");
            w5.close();

            PrintWriter w6 = new PrintWriter("subjectname-B106", "UTF-8");
            w6.println("B206_mprage");
            w6.close();

            PrintWriter w7 = new PrintWriter("subjectname-B107", "UTF-8");
            w7.println("B207_mprage");
            w7.close();

            PrintWriter w8 = new PrintWriter("subjectname-B108", "UTF-8");
            w8.println("B208_mprage");
            w8.close();

            PrintWriter w9 = new PrintWriter("subjectname-B109", "UTF-8");
            w9.println("B209_mprage");
            w9.close();

            PrintWriter w10 = new PrintWriter("subjectname-B110", "UTF-8");
            w10.println("B210_mprage");
            w10.close();

            PrintWriter w11 = new PrintWriter("subjectname-B111", "UTF-8");
            w11.println("B211_mprage");
            w11.close();

            PrintWriter w12 = new PrintWriter("subjectname-B112", "UTF-8");
            w12.println("B212_mprage");
            w12.close();

            // Sample for sighted subject 1
            // name the file
            PrintWriter w13 = new PrintWriter("subjectname-S01", "UTF-8");
            // list, from the SUBJECTS_DIR, the path to get to
            // write the contents of the file
            w13.println("S01_TY_mprage");
            w13.close();

            PrintWriter w14 = new PrintWriter("subjectname-S02", "UTF-8");
            w14.println("S02_WAH_mprage");
            w14.close();

            PrintWriter w15 = new PrintWriter("subjectname-S03", "UTF-8");
            w15.println("S03_QYR_mprage");
            w15.close();

            PrintWriter w16 = new PrintWriter("subjectname-S04", "UTF-8");
            w16.println("S04_ZFJ_mprage");
            w16.close();

            PrintWriter w17 = new PrintWriter("subjectname-S05", "UTF-8");
            w17.println("S05_XYZ_mprage");
            w17.close();

            PrintWriter w18 = new PrintWriter("subjectname-S06", "UTF-8");
            w18.println("S06_YBH_mprage");
            w18.close();

            PrintWriter w19 = new PrintWriter("subjectname-S07", "UTF-8");
            w19.println("S07_MJ_mprage");
            w19.close();

            PrintWriter w20 = new PrintWriter("subjectname-S08", "UTF-8");
            w20.println("S08_DX_mprage");
            w20.close();

            PrintWriter w21 = new PrintWriter("subjectname-S09", "UTF-8");
            w21.println("S09_LQ_mprage");
            w21.close();

            PrintWriter w22 = new PrintWriter("subjectname-S12", "UTF-8");
            w22.println("S12_WJJ_mprage");
            w22.close();

            PrintWriter w23 = new PrintWriter("subjectname-S13", "UTF-8");
            w23.println("S13_YYC_mprage");
            w23.close();

            PrintWriter w24 = new PrintWriter("subjectname-S14", "UTF-8");
            w24.println("S14_WHB_mprage");
            w24.close();

            PrintWriter w25 = new PrintWriter("subjectname-S15", "UTF-8");
            w25.println("S15_XPQ_mprage");
            w25.close();

            PrintWriter w26 = new PrintWriter("subjectname-S16", "UTF-8");
            w26.println("S16_ZW_mprage");
            w26.close();

        } catch (IOException e) {
           // do something
        }
    }
}