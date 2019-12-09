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
      home: BarberBio(title: 'BarberApp'),
    );
  }
}

class BarberBio extends StatefulWidget {
  BarberBio({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _BarberBioState createState() => _BarberBioState();
}

class _BarberBioState extends State<BarberBio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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