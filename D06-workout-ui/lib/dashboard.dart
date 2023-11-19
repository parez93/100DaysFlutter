import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
        centerTitle: true,
        title: Text(
          'Dashboard',
          style: TextStyle(color: Colors.grey[800], fontSize: 20),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: ExactAssetImage('assets/images/one.jpg'),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text('Today',
                  style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 100,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [
                            Colors.blue,
                            Colors.blue.withOpacity(.7),
                          ],
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Steps',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30)),
                            SizedBox(height: 20),
                            Text('3 500',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w300)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 100,
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [
                            Colors.red,
                            Colors.red.withOpacity(.7),
                          ],
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Sports',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30)),
                            SizedBox(height: 20),
                            Text('25 Min',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w300)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Text('Health Categories',
                  style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Colors.grey.withOpacity(.2)))),
                      child: Text('Activity',
                          style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Colors.grey.withOpacity(.2)))),
                      child: Text('Activity',
                          style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Colors.grey.withOpacity(.2)))),
                      child: Text('Activity',
                          style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(20),
                      child: Text('Activity',
                          style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
