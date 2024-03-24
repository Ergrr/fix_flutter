import 'package:flutter/material.dart';
import 'package:sber_screen/App.dart';

void main() => runApp( MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    primaryColor: Colors.white,
  ),
  initialRoute: '/',
  routes: {
    '/': (context) => const App(),
  },
)
);
