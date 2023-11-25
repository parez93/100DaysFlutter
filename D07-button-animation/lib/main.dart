import 'package:button_animation/button_animation.dart';
import 'package:flutter/material.dart';

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

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonAnimation(
                primaryColor: const Color.fromRGBO(57, 92, 249, 1),
                darkPrimaryColor: const Color.fromRGBO(57, 78, 233, 1),
              ),
              SizedBox(height: 20,),
              ButtonAnimation(
                primaryColor: Colors.yellow.shade700,
                darkPrimaryColor: Colors.yellow.shade800,
              ),
              SizedBox(height: 20,),
              ButtonAnimation(
                primaryColor: Colors.green.shade700,
                darkPrimaryColor: Colors.green.shade800,
              ),
              SizedBox(height: 20,),
              ButtonAnimation(
                primaryColor: Colors.red.shade700,
                darkPrimaryColor: Colors.red.shade800,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
