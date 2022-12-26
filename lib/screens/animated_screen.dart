import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  final Random _random = Random();
  double _width = 50;
  double _heigth = 50;
  Color _color = Colors.indigo;
  BorderRadiusGeometry _borderRadiusGeometry = BorderRadius.circular(5);

  void changeShape() {
    _color = Color.fromRGBO(
      //or with fromRGBO with fourth arg as _random.nextDouble(),
      _random.nextInt(255),
      _random.nextInt(255),
      _random.nextInt(255),
      1,
    );
    _width = _random.nextInt(300).toDouble() + 70;
    _heigth = _random.nextInt(300).toDouble() + 70;
    _borderRadiusGeometry =
        BorderRadius.circular(_random.nextInt(100 + 10).toDouble());
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Container"),
      ),
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _heigth,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadiusGeometry,
          ),
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeOutCubic,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          changeShape();
        },
        child: const Icon(
          Icons.play_circle_outline,
          size: 35,
        ),
      ),
    );
  }
}
