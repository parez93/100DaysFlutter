import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late PageController _controller;
  late AnimationController _rippleController;
  late AnimationController _scaleController;

  late Animation<double> _rippleAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
    _rippleController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _scaleController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));

    _rippleAnimation = Tween(begin: 80.0, end: 90.0).animate(_rippleController)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _rippleController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          _rippleController.forward();
        }
      });
    _scaleAnimation = Tween(begin: 1.0, end: 50.0).animate(_scaleController)..addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.pushReplacement(context, PageTransition(child: Dashboard(), type: PageTransitionType.fade));
      }
    });

    _rippleController.forward();
  }

  @override
  void dispose() {
    _scaleController.dispose();
    _rippleController.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: [
          makePage(image:'assets/images/one.jpg'),
          makePage(image:'assets/images/two.jpg'),
          makePage(image:'assets/images/three.jpg'),
        ],
      ),
    );
  }

  Widget makePage({image}) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(image), fit: BoxFit.cover),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black.withOpacity(.3),
              Colors.black.withOpacity(.3),
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60),
              Text(
                'Exercise 1',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '15',
                    style: TextStyle(
                        color: Colors.yellow[400],
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Minutes',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '3',
                    style: TextStyle(
                        color: Colors.yellow[400],
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Exercises',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ],
              ),
              SizedBox(height: 160),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Start the morning with your health',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(height: 30),
              Align(
                alignment: Alignment.center,
                child: AnimatedBuilder(
                  animation: _rippleAnimation,
                  builder: (context, child) =>
                      Container(
                        width: _rippleAnimation.value,
                        height: _rippleAnimation.value,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue.withOpacity(.4),
                          ),
                          child: InkWell(
                            onTap: () => _scaleController.forward(),
                            child: AnimatedBuilder(
                              animation: _scaleAnimation,
                              builder: (context, child) =>
                                  Transform.scale(
                                    scale: _scaleAnimation.value,
                                    child: Container(
                                      margin: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.blue),
                                    ),
                                  ),
                            ),
                          ),
                        ),
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
