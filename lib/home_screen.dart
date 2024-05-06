import 'dart:ffi';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _numOneTEController = TextEditingController();
  final TextEditingController _numTwoTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _numOneTEController,
              decoration: InputDecoration(
                hintText: "Number 1",
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 8),
            TextField(
              controller: _numTwoTEController,
              decoration: InputDecoration(
                hintText: "Number 2",
              ),
              keyboardType: TextInputType.number,
            ),
          ],
        ),
      ),
    );
  }


  @override

  void dispose(){
    _numOneTEController.dispose();
    _numTwoTEController.dispose();
    super.dispose();
  }

}


