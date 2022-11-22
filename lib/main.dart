import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Калькулятор'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  String res = "";
  double result = 0;

  void _MyCalculator(){
    var a=0;
    setState(() {
        // res = a;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Center(child: Text(widget.title)),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(height: 20,),
            Container(
              child: Text(
                res.toString(),
                style: TextStyle(fontSize: 50),
                textAlign: TextAlign.right,
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,

              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: _MyCalculator,
                      child: Text("7"),
                    ),
                    ElevatedButton(
                      onPressed: _MyCalculator,
                      child: Text("4"),
                    ),
                    ElevatedButton(
                      onPressed: _MyCalculator,
                      child: Text("1"),
                    ),
                    ElevatedButton(
                      onPressed: _MyCalculator,
                      child: Text("+/-"),
                    ),
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: _MyCalculator,
                      child: Text("8"),
                    ),
                    ElevatedButton(
                      onPressed: _MyCalculator,
                      child: Text("5"),
                    ),
                    ElevatedButton(
                      onPressed: _MyCalculator,
                      child: Text("2"),
                    ),
                    ElevatedButton(
                      onPressed: _MyCalculator,
                      child: Text("0"),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ElevatedButton(
                      onPressed: _MyCalculator,
                      child: Text("9"),
                    ),
                    ElevatedButton(
                      onPressed: _MyCalculator,
                      child: Text("6"),
                    ),
                    ElevatedButton(
                      onPressed: _MyCalculator,
                      child: Text("3"),
                    ),
                    ElevatedButton(
                      onPressed: _MyCalculator,
                      child: Text(","),
                    ),
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: _MyCalculator,
                      child: Text("X"),
                    ),
                    ElevatedButton(
                      onPressed: _MyCalculator,
                      child: Text("-"),
                    ),
                    ElevatedButton(
                      onPressed: _MyCalculator,
                      child: Text("+"),
                    ),
                    ElevatedButton(
                      onPressed: _MyCalculator,
                      child: Text("="),
                    ),
                  ],
                ),
              ],
            ),
          ],
        )

// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
