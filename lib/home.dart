import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        backgroundColor: const Color(0xff8B008B),
        hoverColor: Colors.pink,
        tooltip: "Increment",
        child: const Icon(
          color: Colors.white,
          Icons.add,
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 80,
        backgroundColor: Colors.lightBlue,
        elevation: 10,
        title: const Text(
          "Farhan Demo App",
          style: TextStyle(
            fontSize: 30,
            fontFamily: "Honk",
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: double.infinity,
            child: Text("No. of times you have incremented \n $counter ",
                style: const TextStyle(fontFamily: "Honk", fontSize: 20),
                textAlign: TextAlign.center),
          ),
        ],
      ),
    );
  }
}
