import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class OptionScreen extends StatefulWidget {
  @override
  _OptionScreenState createState() => _OptionScreenState();
}

class _OptionScreenState extends State<OptionScreen> {
  late AudioPlayer _audioPlayer;
  bool _isSoundEnabled = true;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
    _loadMusic();
  }

  Future<void> _loadMusic() async {
    try {
      await _audioPlayer.setAsset('assets/music.mp3');
      if (_isSoundEnabled) {
        _audioPlayer.play();
      }
    } catch (e) {
      print("Error loading audio: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // Заменяем appBar на задний фон картинки
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/backgt.png'), // Путь к вашему изображению
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sound',
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                  Switch(
                    value: _isSoundEnabled,
                    onChanged: (value) {
                      setState(() {
                        _isSoundEnabled = value;
                        if (_isSoundEnabled) {
                          _audioPlayer.play();
                        } else {
                          _audioPlayer.stop();
                        }
                      });
                    },
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
                Navigator.pushReplacementNamed(context, '/menu');

              },
              child: Image.asset(
                'assets/back.png', // Путь к вашей картинке
                height: 30,
                width: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
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

