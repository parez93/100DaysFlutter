import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class FadeAnimation extends StatelessWidget {
  const FadeAnimation({super.key, required this.delay, required this.child});

  final double delay;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final tween = MovieTween()
      ..tween('opacity', Tween(begin: 0.0, end: 1.0),
          duration: const Duration(milliseconds: 500))
      ..tween('translateY', Tween(begin: 120.0, end: 1.0),
          duration: const Duration(milliseconds: 500), curve: Curves.easeOut);

    return CustomAnimationBuilder(
      builder: (context, movie, child) => Opacity(
        opacity: movie.get<double>('opacity'),
        child: Transform.translate(
          offset: Offset(0, movie.get<double>('translateY')),
          child: child,
        ),
      ),
      tween: tween,
      duration: tween.duration,
      delay: Duration(milliseconds: (500 * delay).round()),
      child: child,
    );
  }
}
