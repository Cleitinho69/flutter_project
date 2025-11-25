import 'package:flutter/material.dart';

class Btn extends StatelessWidget {
  final String btn;

  const Btn({
    super.key,
    required this.btn,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: Size(70, 70),
          backgroundColor: const Color.fromARGB(255, 53, 53, 53),
          shape: RoundedRectangleBorder(
            // 1. Define o raio de arredondamento em todas as pontas
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        onPressed: () => {},
        child: Text(btn),
      ),
    );
  }
}
