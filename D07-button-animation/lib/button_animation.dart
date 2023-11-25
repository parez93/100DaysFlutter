import 'package:flutter/material.dart';

class ButtonAnimation extends StatefulWidget {
  final Color primaryColor;
  final Color darkPrimaryColor;

  ButtonAnimation({required this.primaryColor, required this.darkPrimaryColor});

  @override
  State<ButtonAnimation> createState() => _ButtonAnimationState();
}

class _ButtonAnimationState extends State<ButtonAnimation>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late AnimationController _scaleController;
  late AnimationController _fadeController;

  late Animation<double> _animation;
  late Animation<double> _scaleAnimation;
  late Animation<double> _fadeAnimation;

  double buttonWidth = 200.0;
  double scale = 1.0;
  double barColorOpacity = .6;
  bool animationStart = true;
  bool animationComplete = false;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _scaleController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _fadeController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 400));

    _fadeAnimation = Tween(begin: 50.0, end: 0.0).animate(_fadeController);
    _scaleAnimation = Tween(begin: 1.0, end: 1.05).animate(_scaleController)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _scaleController.reverse();
          _fadeController.forward();
          _controller.forward();
        }
      });

    _animation = Tween(begin: 0.0, end: buttonWidth).animate(_controller)
      ..addStatusListener((status) {
        if(status == AnimationStatus.completed) {
          setState(() {
            animationComplete = true;
            barColorOpacity = .0;
          });;
        }
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    _scaleController.dispose();
    _fadeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedBuilder(
          animation: _scaleController,
          builder: (ctx, child) => Transform.scale(
            scale: _scaleAnimation.value,
            child: InkWell(
              onTap: () => _scaleController.forward(),
              child: Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  color: widget.primaryColor,
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Align(
                        child: animationComplete == false ?
                        Text(
                          'Download',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ) : 
                          Icon(Icons.check, color: Colors.white,)
                      ),
                    ),
                    AnimatedBuilder(
                      animation: _fadeController,
                      builder: (context, child) => Container(
                        width: _fadeAnimation.value,
                        height: 50,
                        decoration: BoxDecoration(
                          color: widget.darkPrimaryColor,
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: Icon(
                          Icons.arrow_downward,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        AnimatedBuilder(
          animation: _controller,
          builder: (context, child) => Positioned(
            left: 0,
            top: 0,
            width: _animation.value,
            height: 50,
            child: Container(
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 200),
                opacity: barColorOpacity,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
