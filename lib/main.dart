import 'package:flutter/material.dart';
import 'package:marketapp_ui/market_app/market_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MarketApp(),
      routes: {
        MarketApp.id: (context) => MarketApp()
      },
    );
  }
}

