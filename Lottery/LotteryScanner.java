// Lottery Checker

import java.util.Scanner;

public class Main {
    public static int [] answer = new int [6];
    public static int bonusNumber;
    
    public static void main(String[] args) {
        Scanner kb = new Scanner(System.in);
        int T, budget = 0;
        int [] lottery = new int [6];
        
        System.out.println("INPUT ANSWER WITHOUT BONUS NUMBER.");
        for( int i = 0; i < 6; i++ )
            answer[i] = kb.nextInt();
        
        System.out.println("INPUT ANSWER BONUS NUMBER.");
        bonusNumber = kb.nextInt();
        
        /*
         * unsolved yet
         System.out.println("DO YOU HAVE A NUMBER FILE? (Y/N)");
         String answer = kb.next();
         
         if( answer.equals("Y")) {
         return;
         }
         else {
         */
        System.out.println("HOW MANY LOTTERYS DID YOU BUY?");
        T = kb.nextInt();
        
        for( int i = 0; i < T; i++ ) {
            System.out.println("INPUT NUMBER YOU BOUGHT.");
            for( int j = 0; j < 6; j++ ) {
                lottery[j] = kb.nextInt();
            }
            if( getGrade(lottery) == 1 ) {
                System.out.println("YOU ARE "+getGrade(lottery)+"st GRADE AT ROUND "+i+".");
                budget += 100000000;
            }
            else if( getGrade(lottery) == 2 ) {
                System.out.println("YOU ARE "+getGrade(lottery)+"nd GRADE AT ROUND "+i+".");
                budget += 20000000;
            }
            else if( getGrade(lottery) == 3 ) {
                System.out.println("YOU ARE "+getGrade(lottery)+"rd GRADE AT ROUND "+i+".");
                budget += 1000000;
            }
            else if (getGrade(lottery) == 4) {
                System.out.println("YOU ARE "+getGrade(lottery)+"th GRADE AT ROUND "+i+".");
                budget += 50000;
            }
            else if( getGrade(lottery) == 5) {
                System.out.println("YOU ARE "+getGrade(lottery)+"th GRADE AT ROUND "+i+".");
                budget += 5000;
            }
        }
        System.out.println("YOU WIN "+budget+" WON!");
    }
}

public static int getGrade(int [] lottery) {
int score = 0;
boolean bonusScore = false;
int i = 0, j = 0;

while( i <= 5 && j <= 5 ) {
if( lottery[i] > answer[j] )
j++;
else if( lottery[i] < answer[j] )
i++;
else {
score++;
i++;
j++;
}
}
if( score == 5 )
for( int k = 0; k < 6; k++ )
if( lottery[k] == bonusNumber )
bonusScore = true;

if( score == 6 )
return 1;
else if( score == 5) {
if( bonusScore == true )
return 2;
else
return 3;
}
else if( score == 4)
return 4;
else if( score == 3 )
return 5;
else
return 0;

}
}

