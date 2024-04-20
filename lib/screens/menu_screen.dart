import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:land_cold_adventures/screens/quiz_screen.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.isSelected = false,
    this.isCorrectAnswer = false,
    this.isWrongAnswer = false,
  }) : super(key: key);

  final String label;
  final VoidCallback onPressed;
  final bool isSelected;
  final bool isCorrectAnswer;
  final bool isWrongAnswer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 200),
        height: 70,
        decoration: BoxDecoration(
          color: isSelected
              ? isCorrectAnswer
              ? Colors.green
              : isWrongAnswer
              ? Colors.red
              : Colors.white
              : Colors.white,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: Colors.white,
          ),
        ),
        child: TextButton(
          onPressed: onPressed,
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                fontSize: 16,
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyCustomScreen extends StatelessWidget {
  const MyCustomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/blackbackgr.png'), // Путь к вашему изображению
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                label: 'Start',
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/quiz');
                },
              ),
              CustomButton(
                label: 'Options',
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/opt');

                },
              ),
              CustomButton(
                label: 'Exit',
                onPressed: () {
                  SystemNavigator.pop(); // Полный выход из приложения
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyCustomScreen(),
  ));
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
