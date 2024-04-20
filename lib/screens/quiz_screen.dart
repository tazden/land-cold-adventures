import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:land_cold_adventures/models/questions.dart';
import 'package:land_cold_adventures/screens/result_screen.dart';
import 'package:land_cold_adventures/widgets/answer_card.dart';
import 'package:land_cold_adventures/widgets/next_button.dart';
import 'package:land_cold_adventures/screens/menu_screen.dart'; // Импортируем экран меню

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int? selectedAnswerIndex;
  int questionIndex = 0;
  int score = 0;

  final List<String> questionImages = [
    'assets/one.png',
    'assets/two.png',
    'assets/three.png',
    'assets/four.png',
    'assets/five.png',
    'assets/six.png',
    'assets/seven.png',
    'assets/eight.png',
    'assets/nine.png',
    'assets/ten.png',
    // Добавьте пути к вашим изображениям для каждого вопроса
  ];

  void pickAnswer(int value) {
    setState(() {
      selectedAnswerIndex = value;
      final question = questions[questionIndex];
      if (selectedAnswerIndex == question.correctAnswerIndex) {
        score += 1;
      }
    });
  }

  void goToNextQuestion() {
    setState(() {
      if (questionIndex < questions.length - 1) {
        questionIndex++;
        selectedAnswerIndex = null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final question = questions[questionIndex];
    bool isLastQuestion = questionIndex == questions.length - 1;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/blackbackgr.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  if (questionIndex < questionImages.length)
                    Image.asset(
                      questionImages[questionIndex],
                      height: 180,
                      width: 180,
                    ),
                  Text(
                    question.question,
                    style: const TextStyle(
                      fontSize: 21,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: question.options.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: selectedAnswerIndex == null ? () => pickAnswer(index) : null,
                        child: AnswerCard(
                          currentIndex: index,
                          question: question.options[index],
                          selectedAnswerIndex: selectedAnswerIndex,
                          isSelected: selectedAnswerIndex == index,
                          correctAnswerIndex: question.correctAnswerIndex,
                        ),
                      );
                    },
                  ),
                  isLastQuestion
                      ? RectangularButton(onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultScreen(score: score),
                      ),
                    );
                  }, label: "Finish")
                      : RectangularButton(
                    onPressed: selectedAnswerIndex != null ? goToNextQuestion : null,
                    label: "Next",
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 20,
            child: GestureDetector(
              onTap: () {
                if (questionIndex > 0) {
                  setState(() {
                    questionIndex--;
                    selectedAnswerIndex = null;
                  });
                } else {
                  Navigator.pushReplacementNamed(context, '/menu');
                }
              },
              child: Image.asset(
                'assets/back.png',
                height: 30,
                width: 30,
              ),
            ),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, '/menu');
              },
              child: Image.asset(
                'assets/menu.png',
                height: 30,
                width: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class SomeRandomClass {
  // Просто заглушка, этот класс никуда не используется
}

// Еще одна функция без смысла
void someMeaninglessFunction() {
  // Просто печать ненужной информации
  print('This function doesnt do anything useful.');
  }
class DummyModel {
  String? name;
  int? age;
  double? height;

  // Заглушка для метода, который ничего не делает
  void doNothing() {
    // Ничего не делаем
  }

  // Еще один метод, который возвращает значение, но нигде не используется
  String? getSomeValue() {
    return 'Some meaningless value';
  }
}

// Еще одна функция, которая просто выводит сообщение в консоль
void anotherMeaninglessFunction() {
  print('This function also does nothing useful.');
}

// Еще один виджет, который не имеет особого смысла
class PlaceholderWidget extends StatelessWidget {
  const PlaceholderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        'Placeholder',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}

