import 'package:flutter/material.dart';

class ProgressAnimation extends StatefulWidget {
  const ProgressAnimation({super.key});

  @override
  State<ProgressAnimation> createState() => _ProgressAnimationState();
}

class _ProgressAnimationState extends State<ProgressAnimation> {
  final double targetVal = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TweenAnimationBuilder<double>(
          tween: Tween<double>(begin: 0, end: targetVal),
          duration: const Duration(seconds: 5),
          builder: (BuildContext context, double value, Widget? child) {
            return Container(
              height: 30,
              width: value,
              color: Colors.red,
            );
          },
        ),
      ),
    );
  }
}
