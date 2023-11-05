import 'package:flutter/material.dart';
import 'package:simple_animations/animation_builder/custom_animation_builder.dart';
import 'package:simple_animations/movie_tween/movie_tween.dart';

class FadeAnimation extends StatelessWidget {
  const FadeAnimation({super.key, required this.child, required this.delay});

  final Widget child;
  final double delay;

  @override
  Widget build(BuildContext context) {
    final tween = MovieTween()
      ..tween('opacity', Tween(begin: 0.0, end: 1.0),
          duration: const Duration(milliseconds: 500))
      ..tween('translateX', Tween(begin: 120.0, end: 0.0),
          duration: const Duration(milliseconds: 500), curve: Curves.easeOut);
    return CustomAnimationBuilder(
      builder: (ctx, anim, child) {
        return Opacity(
          opacity: anim.get('opacity'),
          child: Transform.translate(
            offset: Offset(anim.get('translateX'), 0),
            child: child,
          ),
        );
      },
      duration: tween.duration,
      delay: Duration(milliseconds: (500 * delay).round()),
      tween: tween,
      child: child,
    );
  }
}
