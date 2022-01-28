import 'package:flutter/material.dart';
import 'dart:math';

class MagicBallApp extends StatefulWidget {
  @override
  State<MagicBallApp> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MagicBallApp> {
  void _changeAdvice() {
    setState(() {
      Random _random = new Random();
      int _randomNumber = _random.nextInt(
          _advices.length); // from 0 up to _advices.length - 1 included
      _mainStr = _advices[_randomNumber];
    });
  }

  String _mainStr = 'images/background_advice.png';

  final List<String> _advices = [
    'images/advice_0.png',
    'images/advice_1.png',
    'images/advice_2.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Magic Ball App UI'),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Image.asset('images/background.png'),
            Image.asset(_mainStr),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeAdvice,
        tooltip: 'Get an advice',
        child: const Icon(Icons.album_sharp),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(height: 50.0),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
