import 'package:flutter/material.dart';
import 'package:food_delivery_ui/animation/fade_animation.dart';
import 'package:food_delivery_ui/pages/home_page.dart';
import 'package:page_transition/page_transition.dart';

class StarterPage extends StatefulWidget {
  const StarterPage({super.key});

  @override
  State<StarterPage> createState() => _StarterPageState();
}

class _StarterPageState extends State<StarterPage> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  bool _textvisible = true;


  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 100));
    _animation = Tween(begin: 1.0, end: 25.0).animate(_controller);
  }

  void _onTap() {
    setState(() {
      _textvisible = false;
    });

    _controller.forward().then((value) => Navigator.push(context,
        PageTransition(child: HomePage(), type: PageTransitionType.fade)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/starter-image.jpg'),
              fit: BoxFit.cover),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.2),
              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeAnimation(
                  delay: .5,
                  child: Text(
                    'Taking order for delivery',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20),
                FadeAnimation(
                  delay: .5,
                  child: Text(
                    'See restaurants nearby by \nadding location',
                    style: TextStyle(
                      color: Colors.white,
                      height: 1.4,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(height: 100),
                FadeAnimation(
                  delay: 1.2,
                  child: ScaleTransition(
                    scale: _animation ,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          colors: [
                            Colors.yellow,
                            Colors.orange,
                          ],
                        ),
                      ),
                      child: AnimatedOpacity(
                        opacity: _textvisible ? 1.0 : 0.0,
                        duration: Duration(milliseconds: 50),
                        child: MaterialButton(
                          minWidth: double.infinity,
                          onPressed: _onTap,
                          child: Text(
                            'Start',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),),
                SizedBox(height: 30),
                FadeAnimation(
                  delay: 1.4,
                  child: AnimatedOpacity(
                    opacity: _textvisible ? 1.0 : 0.0,
                    duration: Duration(milliseconds: 50),
                    child: Align(
                      child: Text(
                        'Now deliver to your door 24/7',
                        style: TextStyle(color: Colors.white70, fontSize: 15),
                      ),
                    ),
                  ),),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
