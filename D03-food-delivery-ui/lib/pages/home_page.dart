import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery_ui/animation/fade_animation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_basket,
                color: Colors.grey[800],
              ))
        ],
        leading: Icon(null),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeAnimation(
                      child: Text(
                        'Food Delivery',
                        style: TextStyle(
                            color: Colors.grey[80],
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      delay: 1),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        FadeAnimation(
                            child: makeCategory(isActive: true, title: 'Pizza'),
                            delay: 1),
                        FadeAnimation(
                            child:
                                makeCategory(isActive: false, title: 'Burgers'),
                            delay: 1.3),
                        FadeAnimation(
                            child:
                                makeCategory(isActive: false, title: 'Kebab'),
                            delay: 1.4),
                        FadeAnimation(
                            child:
                                makeCategory(isActive: false, title: 'Dessert'),
                            delay: 1.5),
                        FadeAnimation(
                            child:
                                makeCategory(isActive: false, title: 'Salad'),
                            delay: 1.6),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            FadeAnimation(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Free delivery',
                    style: TextStyle(
                        color: Colors.grey[700],
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                delay: 1),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    FadeAnimation(
                        child: makeItem(image: 'assets/images/one.jpg'),
                        delay: 1.4),
                    FadeAnimation(
                        child: makeItem(image: 'assets/images/two.jpg'),
                        delay: 1.5),
                    FadeAnimation(
                        child: makeItem(image: 'assets/images/three.jpg'),
                        delay: 1.6),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }

  Widget makeCategory({isActive, title}) {
    return AspectRatio(
      aspectRatio: isActive ? 3 : 2.0 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
            color: isActive ? Colors.yellow[700] : Colors.white,
            borderRadius: BorderRadius.circular(50)),
        child: Align(
          child: Text(
            title,
            style: TextStyle(
                color: isActive ? Colors.white : Colors.grey[500],
                fontSize: 18,
                fontWeight: isActive ? FontWeight.bold : FontWeight.w100),
          ),
        ),
      ),
    );
  }

  Widget makeItem({image}) {
    return AspectRatio(
      aspectRatio: 1 / 1.4,
      child: GestureDetector(
        child: Container(
          margin: EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                stops: [.2, .9],
                colors: [
                  Colors.black.withOpacity(.9),
                  Colors.black.withOpacity(.3),
                ],
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                    alignment: Alignment.topRight,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '€ 15.00',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Vegetarian pizza',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
