
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RectangularButton extends StatelessWidget {
  const RectangularButton({
    Key? key,
    required this.onPressed,
    required this.label,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 200), // Установите максимальную ширину кнопки
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white, // Измените цвет фона на белый
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
              style: const TextStyle(
                letterSpacing: 2,
                fontSize: 25,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

