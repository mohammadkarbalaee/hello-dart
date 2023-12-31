import 'dart:io';

void main() {

    //list of questions
    List<String> questions = [
    "1.How many continents are there in the world?\rA)5  B)6  C)7  D)8",
    "2.What is the chemical symbol for water?\rA)H  B)O  C)W  D)H2O",
    "3.In which year did the Titanic sink?\rA)1909  B)1912  C)1924  D)1931",
    "4.Who is the CEO of Tesla?\rA)Jeff Bezos  B)Tim Cook  C)Elon Musk  D)Bill Gates",
    "5. Which country is the largest by land area?\rA)Russia  B)Canada  C)United States  D)China",
    "6.In \"Romeo and Juliet,\" what is Romeo's last name?\rA)Montague  B)Capulet  C)Verona  D)Benvolio]",
    "7. What is the value of π (pi) rounded to two decimal places?\rA).14  B)3.16  C)3.18  D)3.20", 
    "8.Who is known as the \"King of Pop\"?\rA)Soccer  B)Tennis  C)Basketball  D)Usher",
    "9.In which sport might you perform a \"slam dunk\"?\rA)Soccer  B)Tennis  C)Basketball  D)Golf",
    "10.What does \"WWW\" stand for in relation to the internet?\rA)World Wide Web  B)Western Washington Wilderness  C)Web World Wires  D)Wild Wild West"];
    
    //list of correct answers
    List<String> answers = ["C", "D", "B","C","A","A","A","C","C","A",];

    print("Hello, wellcome to the 4Quiz!\rPlease fist enter your name:");
    String userName = stdin.readLineSync()!;
    
    print('Do you want to know the game description?\rY)yes N)no (Pleas write capital letters)');
    String description = stdin.readLineSync()!;
    if (description == "Y") {
        print("This game is very easy. You will have ten 4-choice question.\nType the right answer for each quesion, and at the end you will see your score.\rGood lock");
    } else {
        print('Okay let\'s begin');
    }
    
    //the socre wich we be count form 0
    int result = 0;
    
    //create an empty list to store wrong answers to show them at the end
    List<int> wrong = [];
    
    //in the loop first we show every question and wait to get an answer, if the answer is correct the score increases by one.
    for (int i = 0; i < 10; i++) {
        print("${questions[i]}");
        var answer = stdin.readLineSync();
        var answerIng = int.tryParse(answer ?? "");
       if (answer == null) {
           print("invalid input");
       } else {
           if (answers[i] == answer) {
               print('Correct👍');
            result = result + 1;
        } else {
            print('Incorrect👎');
                wrong.add(i);
            }
       }
    }
    
    print('Here are the question you didnt answer correct↷');
    for (int i = 0; i < wrong.length; i++) {
        print('${questions[i]}\rcorrect answer : ${answers[i]}');
    }
       //here we show the result and how was their job
       print('Dear $userName ,here is your socre : $result\r');
       if (7 <= result) {
           print('You\'re doing exceptionally well');
       } else if (3 <= result) {
           print('You\'re doing good');
       } else {
           print('You need more practice');
       }
}