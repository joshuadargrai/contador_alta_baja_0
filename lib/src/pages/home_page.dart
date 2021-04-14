import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _contador = 0;

  increment() {
    setState(() {
      _contador++;
    });
  }

  decrement() {
    setState(() {
      _contador--;
    });
  }

  reset() {
    setState(() {});
    _contador = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App botoncito'),
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Text(
              '$_contador',
              style: TextStyle(fontSize: 80.0),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton(
                  onPressed: increment,
                  child: Icon(Icons.add),
                  tooltip: 'Increment',
                ),
                SizedBox(
                  width: 20.0,
                ),
                FloatingActionButton(
                  onPressed: decrement,
                  child: Icon(Icons.remove),
                  tooltip: 'Decrement',
                ),
                SizedBox(
                  width: 20.0,
                ),
                FloatingActionButton(
                  onPressed: reset,
                  child: Icon(Icons.delete),
                  tooltip: 'reset',
                ),
              ],
            ),
          ])),
    );
  }
}
