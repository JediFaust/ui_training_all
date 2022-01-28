import 'package:flutter/material.dart';
import 'package:ui_training_all/apps/balance_app.dart';
import 'package:ui_training_all/apps/crypto_app.dart';
import 'package:ui_training_all/apps/magic_ball_app.dart';
import 'package:ui_training_all/apps/weather_app.dart';
import 'package:ui_training_all/apps/travel_app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Training',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      routes: {
        '/balance': (context) => BalanceApp(),
        '/crypto': (context) => CryptoApp(),
        '/travel': (context) => TravelApp(),
        '/magic_ball': (context) => MagicBallApp(),
        '/weather': (context) => WeatherApp(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UI Training'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/balance');
                },
                child: Text('Balance App')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/crypto');
                },
                child: Text('Crypto App')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/travel');
                },
                child: Text('Travel App')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/magic_ball');
                },
                child: Text('Magic Ball App')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/weather');
                },
                child: Text('Weather App')),
          ],
        ),
      ),
    );
  }
}
