import 'package:flutter/material.dart';
import 'package:land_cold_adventures/screens/loading_screen.dart';
import 'package:land_cold_adventures/screens/menu_screen.dart';
import 'package:land_cold_adventures/screens/option_screen.dart';
import 'package:land_cold_adventures/screens/quiz_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Land Cold Adventures',

      debugShowCheckedModeBanner: false,
      home: const LoadingScreen(), // Здесь установите LoadingScreen как начальный экран
      // Добавьте маршруты для других экранов вашего приложения
      routes: {
        '/quiz': (context) => const QuizScreen(), // Пример маршрута для QuizScreen
        '/menu': (context) => const MyCustomScreen(), // Пример маршрута для QuizScreen
        '/opt': (context) =>  OptionScreen(), // Пример маршрута для QuizScreen
      },
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

