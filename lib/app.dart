import 'package:flutter/material.dart';
import 'package:tip_calculator_app/tip_calculator/views/home_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tip Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyText1:
              TextStyle(fontFamily: 'MonoSpace', fontWeight: FontWeight.w700),
          bodyText2:
              TextStyle(fontFamily: 'MonoSpace', fontWeight: FontWeight.w400),
        ),
      ),
      home: const HomePage(),
    );
  }
}
