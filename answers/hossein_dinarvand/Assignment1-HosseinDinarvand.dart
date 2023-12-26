import 'dart:io';
import 'dart:math';

void main()
{
    List<String> questions = [
        "1) What is the largest mammal on Earth?\na) Elephant\nb) Blue Whale\nc) Giraffe\nd) Gorilla",
        "2) Which big cat is known for its distinctive black mane and is often called the 'king of the jungle'?\na) Tiger\nb) Cheetah\nC) Lion\nd) Leopard",
        "3) What is the only mammal capable of sustained flight?\na) Bat\nb) Eagle\nc) Hummingbird\nd) Butterfly",
        "4) Which marine animal is famous for its long, spiral tusks?\na) Walrus\nb) Narwhal\nc) Dolphin\nd) Seal",
        "5) Which animal is known for its ability to change color and blend in with its surroundings?\na) Chameleon\nb) Peacock\nc) Octopus\nd) Parrot",
        "6) What is the largest species of bear?\na) Polar Bear\nb) Grizzly Bear\nc) Panda Bear\nd) Black Bear",
        "7) Which bird is famous for its ability to mimic human speech?\na) Owl\nb) Penguin\nc) Parrot\nd) Crow",
        "8) What animal is often associated with carrying its babies in a pouch?\na) Kangaroo\nb) Elephant\nc) Cheetah\nd) Koala",
        "9) Which reptile is known for its ability to change sex based on environmental factors?\na) Snake\nb) Turtle\nc) Alligator\nd) Frog",
        "10) Which insect is known for its ability to produce light through bioluminescence?\na) Dragonfly\nb) Firefly\nc) Butterfly\nd) Grasshopper"
    ];

    const List<String> choice = ['b','c','a','b','a','a','c','a','d','b']; //choice of questions Respectively.

    displayMenu();
    print("choice:");
    String start = stdin.readLineSync()!;

    while(true)
    {
        switch(start)
        {
            case 's':
                double Score=0;
                double correctAnswer=0;
                double incorrectAnswer=0;
                int length = questions.length;
                for(int i = 0; i < length; i++)
                {
                    String q =  printQuestion(questions);
                    int index = questions.indexOf(q);

                    print(q);
                    print("choice:");
                    String enteredChoice = stdin.readLineSync()!;
                    delete(questions,q);
                    if(choice[index] == enteredChoice)
                    {
                        correctAnswer ++;
                    }  
                    else
                    {
                        incorrectAnswer ++;
                    }
                }

                Score = correctAnswer - incorrectAnswer/3 ;
                displayScore(correctAnswer, incorrectAnswer, Score);

                print("End game");
                return;
            case 'q':
                return;
        }
    }
}

// display method for start adn quit game.
void displayMenu()
{
    print("*****Welcome*****");
    print("Enter s to start game.");
    print("Enter q to quit game.");
}

//delete element of array
void delete(List<String> array,String element)
{
    array.remove(element);
}

//print question randomly
String printQuestion(List<String> questions)
{
    int randomIndex = Random().nextInt(questions.length);
    return questions[randomIndex];
}

//display Score 
void displayScore(double correctAnswer,double incorrectAnswer,double Score)
{
    Score = correctAnswer - incorrectAnswer/3 ;
    print("corrects: ${correctAnswer}");
    print("Incorrests: ${incorrectAnswer}");
    print("Score: ${Score}");
}