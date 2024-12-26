import 'package:flutter/material.dart';

class TweenAnimation extends StatefulWidget {
  const TweenAnimation({super.key});

  @override
  State<TweenAnimation> createState() => _TweenAnimationState();
}

class _TweenAnimationState extends State<TweenAnimation> {
  final double targetVal = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TweenAnimationBuilder<double>(
          tween: Tween<double>(begin: 0, end: targetVal),
          duration: const Duration(milliseconds: 500),
          builder: (BuildContext context, double value, Widget? child) {
            return Text(
              value.toStringAsFixed(2), // Display animated value
              style:
                  const TextStyle(fontSize: 100, fontWeight: FontWeight.w900),
            );
          },
        ),
      ),
    );
  }
}
