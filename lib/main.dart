import 'package:flutter/material.dart';
import 'package:parallax_rain/parallax_rain.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.black),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Key parallaxOne = GlobalKey();
  final Key parallaxTwo = GlobalKey();
  final Key parallaxThree = GlobalKey();
  final Key parallaxFour = GlobalKey();
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.green,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.home,color: Colors.white,),
            Icon(Icons.notifications,color: Colors.white),
            Icon(Icons.settings,color: Colors.white),
            Icon(Icons.people,color: Colors.white),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text("Parallax Rain Effect",style: TextStyle(fontSize: 15),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ParallaxRain(
                    key: parallaxTwo,
                    dropColors: [
                      Colors.red,
                      Colors.green,
                      Colors.blue,
                      Colors.yellow,
                      Colors.brown,
                      Colors.blueGrey
                    ],
                    trail: true,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}