import 'dart:math';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Dice App",
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int number = 1;
  changer() {
    setState(() {
      number = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dice App"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Image.asset("assets/$number.png"),
          SizedBox(
            height: 20,
          ),
          Center(
            child: MaterialButton(
              color: Colors.blue,
              child: Text(
                "Roll",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: changer,
            ),
          ),
          SizedBox(height: 450),
          Text("Made by Shishir Gajurel"),
        ],
      ),
    );
  }
}
