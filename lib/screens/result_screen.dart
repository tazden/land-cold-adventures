import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/next_button.dart';

class ResultScreen extends StatelessWidget {
  final int score;

  const ResultScreen({Key? key, required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String scoreText = '$score/10'; // Добавляем "/10" к значению score

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
              Text(
                'Your result',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              SizedBox(height: 20),
              Text(
                scoreText, // Отображаем score с добавленным "/10"
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20), // Добавляем отступ между текстом и кнопкой
              RectangularButton( // Добавляем кнопку "To Menu"
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/menu');
                },
                label: 'To Menu',
              ),
            ],
          ),
        ),
      ),
    );
  }
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


