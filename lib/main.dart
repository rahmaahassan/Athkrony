import 'package:flutter/material.dart';

import 'pages/splashScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'أذكروني',
      theme: ThemeData(
          primaryColor: Color(0xFF0c7b73),
          accentColor: Color(0xFFe8c17c),
          fontFamily: 'ReemKufi',
      ),
      home: SplashScreen(),
    );
  }
}
