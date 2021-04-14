import 'package:flutter/material.dart';
import 'package:contador_alta_baja_0/src/pages/home_page.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
