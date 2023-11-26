import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const Responsive(
      {super.key, required this.mobile, this.tablet, required this.desktop});

  static bool isMobile(ctx) => MediaQuery.sizeOf(ctx).width < 850;

  static bool isTablet(ctx) =>
      MediaQuery.sizeOf(ctx).width < 1100 &&
      MediaQuery.sizeOf(ctx).width >= 850;

  static bool isDesktop(ctx) => MediaQuery.sizeOf(ctx).width >= 1100;

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.sizeOf(context).width;
    if(_width >= 1100) return desktop;
    if(_width >= 850 && tablet != null) return tablet!;
    return mobile;
  }
}
