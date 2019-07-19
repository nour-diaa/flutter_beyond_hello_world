import './screens/second_screen.dart';
import './screens/third_screen.dart';
import './theme/theme.dart';
import 'package:flutter/material.dart';
import './screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myThemeData,
      // home: HomeScreen(),
      initialRoute: true? '/' : '/second', //islogged ? '' : ''
      routes: {
        '/' : (context) => HomeScreen(),
        '/second' : (context) => SecondScreen(),
        '/third' : (context) => ThirdScreen(),
      },
    );
  }
}
