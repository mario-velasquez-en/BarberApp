import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Homescreen',
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
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(title: 'BarberApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
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
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text("Faq Route"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FaqPage()),
                );
              },
            ),
            FlatButton(
              child: Text("Receipt Route"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ReceiptPage()),
                );
              },
            ),

            FlatButton(
              child: Text("Schedule Route"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Schedule()),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class FaqPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FAQ"),
      ),
      body: ListView(
        children: <Widget>[
          RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
                TextSpan(
                  text: '       FAQ\n\n',
                  style: TextStyle(color: Colors.orange.withOpacity(0.9)),
                ),
                TextSpan(
                  text: 'Q1. Why use this app?\n',
                  style: TextStyle(
                      color: Colors.deepOrange.withOpacity(1.0), fontSize: 30),
                ),
                TextSpan(
                  text: 'Porque es la mejor app que hay\n',
                  style: TextStyle(
                      color: Colors.deepOrange.withOpacity(0.7), fontSize: 25),
                ),
                TextSpan(
                  text: '\n\nQ2. What kind of cuts?\n',
                  style: TextStyle(
                      color: Colors.deepOrange.withOpacity(1.0), fontSize: 30),
                ),
                TextSpan(
                  text: 'We do them all\n',
                  style: TextStyle(
                      color: Colors.deepOrange.withOpacity(0.7), fontSize: 25),
                ),
                TextSpan(
                  text: '\n\nQ3. Price for a cut?\n',
                  style: TextStyle(
                      color: Colors.deepOrange.withOpacity(1.0), fontSize: 30),
                ),
                TextSpan(
                  text: 'As low as ten dollars to infinity based on your tip ;)\n',
                  style: TextStyle(
                      color: Colors.deepOrange.withOpacity(0.7), fontSize: 25),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReceiptPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Receipt"),
      ),
      body: ListView(
        children: <Widget>[
          RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
                TextSpan(
                  text: '    Receipt\n\n',
                  style: TextStyle(color: Colors.orange.withOpacity(0.9)),
                ),
                TextSpan(
                  text: 'Amount:  15.00\n',
                  style: TextStyle(color: Colors.black.withOpacity(0.8)),
                ),
                TextSpan(
                  text: 'Tip:     5.00\n',
                  style: TextStyle(color: Colors.black.withOpacity(0.8)),
                ),
                TextSpan(
                  text: 'Cut: Low Fade\n',
                  style: TextStyle(color: Colors.black.withOpacity(0.8)),
                ),
                TextSpan(
                  text: 'Design:  N/A\n\n',
                  style: TextStyle(color: Colors.black.withOpacity(0.8)),
                ),
                TextSpan(
                  text: 'Total:   20.00\n',
                  style: TextStyle(color: Colors.black.withOpacity(1.0)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class Schedule extends StatefulWidget {

  @override
  _ScheduleState createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scheduling"),        
      ),
    body: Center(
      child: DropdownButton<String>(
        value: dropdownValue,
        icon: Icon(Icons.arrow_downward),
        iconSize: 24,
        elevation: 16,
        style: TextStyle(
          color: Colors.deepPurple
        ),
        underline: Container(
          height: 2,
          color: Colors.deepPurpleAccent,
        ),
        onChanged: (String newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        items: <String>['One', 'Low Fade', 'Rapado', 'Trasquilado']
          .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          })
          .toList(),
      ),
    ),
  );
  }
}