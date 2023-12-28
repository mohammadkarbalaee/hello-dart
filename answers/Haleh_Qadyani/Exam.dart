import 'dart:io';

void main(){
    print("Enter your name:");
    String? name = stdin.readLineSync()!;
    exam(name);
}

void exam(String name){
    
    List<String> questions = ["1. What is the capital city of France? a) Paris b) Rome c) London d) Madrid",
    "2. Which planet is closest to the sun? a) Venus b) Mars c) Mercury d) Jupiter",
    "3. Who painted the Mona Lisa? a) Vincent van Gogh b) Leonardo da Vinci c) Pablo Picasso d) Michelangelo",
    "4. What is the largest ocean in the world? a) Atlantic Ocean b) Indian Ocean c) Pacific Ocean d) Arctic Ocean",
    "5. Which country is known for its pyramids? a) Brazil b) Egypt c) China d) Australia",
    "6. What is the tallest mountain in the world? a) Mount Everest b) Mount Kilimanjaro c) Mount McKinley d) Mount Fuji ",
    "7. Who wrote the play [Romeo and Juliet]? a) William Shakespeare b) Charles Dickens c) Jane Austen d) Mark Twain",
    "8. What is the largest continent on Earth? a) Europe b) Africa c) Asia d) South America",
    "9. Which animal is known as [the king of the jungle]? a) Lion b) Elephant c) Giraffe d) Tiger",
    "10. What is the chemical symbol for gold?  a)Hg  b)Ag  c)Fe  d)Au  "];
    
    List<String> answers = ["a", "c", "b", "c", "b",
    "a", "a", "c", "a", "d"];
    
    List<String> Tanswers = [];
    List<String> Fanswers = [];
    
    print("Hello, $name!");
    print("Plz choose your answer after every question's display.");
    for (int i = 0; i < 10; i++){
        print("${questions[i]}");
        String? answer = stdin.readLineSync()!;
        
        if (answers[i] == answer){
            Tanswers.add(answer);
        } else{
            Fanswers.add(answer);
        }
    }
    var a = Tanswers.length;
    var b = Fanswers.length;
    print("Result: $a true and $b false anwsers");
}