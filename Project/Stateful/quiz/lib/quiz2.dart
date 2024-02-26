import 'package:flutter/material.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});
  @override
  State createState() => _QuizAppState();
}

class QuestionIndexModel {
  final String? question;
  final List<String>? options;
  final int? answerIndex;

  const QuestionIndexModel({this.question, this.options, this.answerIndex});
}

class _QuizAppState extends State {
  List allQuestions = const [
    // Question 1
    QuestionIndexModel(
      question: "The first alpha version of Flutter was released in?",
      options: ["2016", "2017", "2018", "2019"],
      answerIndex: 1,
    ),
    // Question 2
    QuestionIndexModel(
      question: "The example of the Stateless widget are?",
      options: ["Text", "Row", "column", "All of the above"],
      answerIndex: 3,
    ),
    // Question 3
    QuestionIndexModel(
      question: "Which function is responsible for starting the program?",
      options: ["runApp()", "run()", "flutter()", "main()"],
      answerIndex: 3,
    ),
    // Question 4
    QuestionIndexModel(
      question: "Which programming language is used for Flutter development?",
      options: ["Java", "Swift", "Dart", "Python"],
      answerIndex: 2,
    ),
    // Question 5
    QuestionIndexModel(
      question: "Which widget is used to create a button in flutter?",
      options: ["Text", "Image", "Icon", "RaisedButton"],
      answerIndex: 3,
    ),
    // Question 6
    QuestionIndexModel(
      question: "Flutter is developed by?",
      options: ["Google", "Meta", "Microsoft", "Twitter"],
      answerIndex: 0,
    ),
    // Question 7
    QuestionIndexModel(
      question: "How many types of widget are there in Flutter?",
      options: ["4", "6", "8", "2"],
      answerIndex: 3,
    ),
    // Question 8
    QuestionIndexModel(
      question: "SDK stand for?",
      options: [
        "Software Development knowledge",
        "Software data kit",
        "Software development kit",
        "Software database kit"
      ],
      answerIndex: 2,
    ),
    // Question 9
    QuestionIndexModel(
      question: "Which of the following tests a single widget?.",
      options: [
        "Integraton Test",
        "Units Tests",
        "Interative Tests",
        "Widget Tests"
      ],
      answerIndex: 3,
    ),
    // Question 10
    QuestionIndexModel(
      question: "The Example of Stateless widget are?",
      options: ["Text", "Row", "Column", "All of the above"],
      answerIndex: 3,
    )
  ];
  int questionScreen = -1;
  int questionIndex = 0;
  int optionColor1 = -1;
  int selectedAnswerIndex = 0;
  int correctanswer = 0;

  void answerQuestion() {
    if (selectedAnswerIndex == -1) {
      return;
    }
    if (selectedAnswerIndex == allQuestions[questionIndex].answerIndex) {
      correctanswer++;
    }
    if (selectedAnswerIndex != -1) {
      if (questionIndex < allQuestions.length - 1) {
        setState(() {
          questionIndex++;
        });
      } else {
        questionIndex = 0;
        selectedAnswerIndex = -1;
        questionScreen = 1;
      }
    }
  }

  MaterialStatePropertyAll<Color?> buttonColor(int button) {
    if (optionColor1 != -1) {
      if (button == allQuestions[questionIndex].answerIndex) {
        return const MaterialStatePropertyAll(Colors.green);
      } else if (button == selectedAnswerIndex) {
        return const MaterialStatePropertyAll(Colors.red);
      } else {
        return const MaterialStatePropertyAll(null);
      }
    } else {
      return const MaterialStatePropertyAll(null);
    }
  }

  String result() {
    if (correctanswer <= 5) {
      return "Better Luck Next time...";
    } else {
      return "Congragulations..!";
    }
  }

  TextStyle textStyle() {
    if (correctanswer <= 5) {
      return const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 30,
        color: Colors.red,
      );
    } else {
      return const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 35,
        color: Colors.green,
      );
    }
  }

  String resultImage() {
    if (correctanswer <= 5) {
      return "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRRHVwmBs8B-2lX61tExit0gEvy3M7h5n4dA&usqp=CAU";
    } else {
      return "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmoGE8pGXE4aUURpYIETqvw6W5RZB-iVvKdw&usqp=CAU";
    }
  }

  Scaffold isQuestionScreen() {
    if (questionScreen == -1) {
      return Scaffold(
          backgroundColor: Colors.white,
          // ignore: avoid_unnecessary_containers
          body: Container(
            // decoration: const BoxDecoration(
            //     gradient: LinearGradient(colors: [Colors.blue, Colors.green],),),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    'https://images.creativemarket.com/0.1.0/ps/7081101/1820/1213/m1/fpnw/wm1/jg8u0qcphxutzjs3r4n5ceyv0zfm5fbuja78xyethttjeyyucafusjjsboi3nidk-.jpg?1570206300&s=3bb8a9455ebc229a6aad147939a2b69d',
                    // height: 30,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Learn Flutter the fun way!",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        questionScreen = 0;
                      });
                    },
                    child: const Text(
                      "Start Quiz",
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
          ));
    } else if (questionScreen == 0) {
      return Scaffold(
        backgroundColor: const Color.fromARGB(255, 89, 126, 156),
        appBar: AppBar(
          title: const Text(
            "QuizApp",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Color.fromARGB(255, 105, 175, 240),
              shadows: [
                Shadow(
                  blurRadius: 2.0,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.amber.shade400,
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Questions : ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "${questionIndex + 1}/${allQuestions.length}",
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 380,
                height: 80,
                child: Text(
                  allQuestions[questionIndex].question,
                  style: const TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  if (optionColor1 == -1) {
                    optionColor1 = 0;
                    setState(() {
                      selectedAnswerIndex = 0;
                    });
                  }
                },
                style: ButtonStyle(
                  backgroundColor: buttonColor(0),
                ),
                child: Text("A. ${allQuestions[questionIndex].options[0]}"),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  if (optionColor1 == -1) {
                    optionColor1 = 0;
                    setState(() {
                      selectedAnswerIndex = 1;
                    });
                  }
                },
                style: ButtonStyle(
                  backgroundColor: buttonColor(1),
                ),
                child: Text("B. ${allQuestions[questionIndex].options[1]}"),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  if (optionColor1 == -1) {
                    optionColor1 = 0;
                    setState(() {
                      selectedAnswerIndex = 2;
                    });
                  }
                },
                style: ButtonStyle(
                  backgroundColor: buttonColor(2),
                ),
                child: Text("C. ${allQuestions[questionIndex].options[2]}"),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  if (optionColor1 == -1) {
                    optionColor1 = 0;
                    setState(() {
                      selectedAnswerIndex = 3;
                    });
                  }
                },
                style: ButtonStyle(
                  backgroundColor: buttonColor(3),
                ),
                child: Text("D. ${allQuestions[questionIndex].options[3]}"),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            answerQuestion();
            optionColor1 = -1;
            setState(() {});
          },
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.forward,
            color: Colors.red,
          ),
        ),
      );
    } else {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            'Result',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          bottomOpacity: 2,
          backgroundColor: Colors.amber.shade400,
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.network(
                resultImage(),
                //"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmoGE8pGXE4aUURpYIETqvw6W5RZB-iVvKdw&usqp=CAU",
                height: 300,
                width: 400,
              ),
              const Text(
                "Congraulation..!",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "You have completed $correctanswer/${allQuestions.length}",
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                result(),
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(
                    () {
                      questionScreen = -1;
                      correctanswer = 0;
                    },
                  );
                },
                child: const Text(
                  "Reset",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }
}
