import 'package:flutter/material.dart';
import 'nextScreen.dart';
import 'location.dart';

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
        child: ListView(
          children: <Widget>[
            FlatButton(
              child: Text("F.A.Q"), onPressed: () {Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => FaqPage()),
                );
              },
            ),
            Image.network(
                "https://media.wired.com/photos/59269cd37034dc5f91bec0f1/master/pass/GoogleMapTA.jpg"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    child: Container(
                        padding: EdgeInsets.fromLTRB(60, 60, 60, 60),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    "https://i.imgur.com/1rHTDAf.png")))),
                  ),
                  Text(
                    'Daequan Smith',
                  ),
                ]),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                      child: Text("Experience: 7 Years"),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                      child: Text("Years at Company: 3 Years"),
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                        child: MaterialButton(
                          textColor: Colors.black,
                          color: Colors.orange,
                          child: Text("Look At Profile"),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BarberBio()),
                            );
                          },
                        ))
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Container(
                        padding: EdgeInsets.fromLTRB(60, 60, 60, 60),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    "https://i.imgur.com/1rHTDAf.png")))),
                  ),
                  Text(
                    'Daequan Smith',
                  ),
                ]),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                      child: Text("Experience: 7 Years"),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                      child: Text("Years at Company: 3 Years"),
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                        child: MaterialButton(
                          textColor: Colors.black,
                          color: Colors.orange,
                          child: Text("Look At Profile"),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BarberBio()),
                            );
                          },
                        ))
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BarberBio extends StatefulWidget {
  //BarberBio({Key key, this.title}) : super(key: key);

  //final String = ;
  @override
  _BarberBioState createState() => _BarberBioState();
}

class _BarberBioState extends State<BarberBio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bio"),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                    width: 250,
                    height: 250,
                    padding: EdgeInsets.fromLTRB(100, 100, 100, 100),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: new NetworkImage(
                                "https://i.imgur.com/1rHTDAf.png")))),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    // Stroked text as border.
                    Text(
                      'Gitsby!',
                      style: TextStyle(
                        fontSize: 40,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 6
                          ..color = Colors.orange,
                      ),
                    ),
                    // Solid text as fill.
                    Text(
                      'Gitsby!',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Gitsby is here to help you in order to get an amazing haircut!",
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  " 7 Years in Workforce - 3 Years at current job - Engineering",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(50, 40, 10, 10),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(Icons.done),
                Text("   Maintained a professional environment")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(Icons.done),
                Text("   Cut, Shape, trimmed and tapered hair")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(Icons.done),
                Text("   Providea clean environment")
              ],
            ),
            Padding(
              padding: EdgeInsets.all(5),
            ),
            Row(
              children: <Widget>[
                Text("Gallery", style: TextStyle(height: 2, fontSize: 50))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Image.network(
                  "https://www.menshairstylesnow.com/wp-content/uploads/2017/04/Undercut-Fade-with-Thick-Textured-Hair.jpg",
                  width: 175,
                  height: 175,
                ),
                Image.network(
                  "https://hairstyleonpoint.com/wp-content/uploads/2014/10/39980f63ebaeed4790455e216e259300.jpg",
                  width: 175,
                  height: 175,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Image.network(
                  "https://www.menshairstyleguide.com/wp-content/uploads/2014/08/barber-haircuts-10.jpg",
                  width: 175,
                  height: 175,
                ),
                Image.network(
                  "http://alphahairstyles.com/wp-content/uploads/2015/11/barber_haircut_2.jpg",
                  width: 175,
                  height: 175,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 50, 10, 10),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  color: Colors.orange,
                  textColor: Colors.black,
                  disabledColor: Colors.blue,
                  disabledTextColor: Colors.blue,
                  padding: EdgeInsets.all(15.0),
                  splashColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Schedule()),
                    );
                    // *************
                  },
                  child: Text(
                    "Make an Appointment with Gitsby ",
                    style: TextStyle(fontSize: 20.0),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
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
                  text:
                      'As low as ten dollars to infinity based on your tip ;)\n',
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
      body: ListView(
        children: <Widget>[
          Image.network(
              "http://www.pngall.com/wp-content/uploads/1/2019-Calendar-PNG-Photo.png"),
          DropdownButton<String>(
            value: dropdownValue,
            icon: Icon(Icons.arrow_downward),
            iconSize: 24,
            elevation: 16,
            style: TextStyle(color: Colors.deepPurple),
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
            }).toList(),
          ),
        FlatButton(
              child: Text("Submit"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ReceiptPage()),
                );
              },
            ),
        ],
      ),
    );
  }
}
