import 'packagefluttermaterial.dart';
import 'packagetable_calendartable_calendar.dart';

void main() = runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title 'Barber App',
      theme ThemeData(
        primarySwatch Colors.orange,
      ),
      home HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  String dropdownValue = 'One';
  @override
  _HomePageState createState() = _HomePageState();
}

class _HomePageState extends StateHomePage {
  CalendarController _controller;
  String dropdownValue = 'Low Fade';
  String dropdownValue2 = 'Mid Fade';
  String dropdownValue3 = 'Razor Fade';
  String dropdownValue4 = 'Crew Cut';


  @override
  void initState() {
     TODO implement initState
    super.initState();
    _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar AppBar(
        title Text('Barber App'),
      ),
      body SingleChildScrollView(
        child Column(
          crossAxisAlignment CrossAxisAlignment.start,
          children Widget[
            TableCalendar(
              initialCalendarFormat CalendarFormat.week,
              calendarStyle CalendarStyle(
                  todayColor Colors.orange,
                  selectedColor Theme.of(context).primaryColor,
                  todayStyle TextStyle(
                      fontWeight FontWeight.bold,
                      fontSize 18.0,
                      color Colors.white)),
              headerStyle HeaderStyle(
                centerHeaderTitle true,
                formatButtonDecoration BoxDecoration(
                  color Colors.orange,
                  borderRadius BorderRadius.circular(20.0),
                ),
                formatButtonTextStyle TextStyle(color Colors.white),
                formatButtonShowsNext false,
              ),
              startingDayOfWeek StartingDayOfWeek.monday,
              onDaySelected (date, events) {
                print(date.toIso8601String());
              },
              builders CalendarBuilders(
                selectedDayBuilder (context, date, events) = Container(
                    margin const EdgeInsets.all(4.0),
                    alignment Alignment.center,
                    decoration BoxDecoration(
                        color Theme.of(context).primaryColor,
                        borderRadius BorderRadius.circular(10.0)),
                    child Text(
                      date.day.toString(),
                      style TextStyle(color Colors.white),
                    )),
                todayDayBuilder (context, date, events) = Container(
                    margin const EdgeInsets.all(4.0),
                    alignment Alignment.center,
                    decoration BoxDecoration(
                        color Colors.orange,
                        borderRadius BorderRadius.circular(10.0)),
                    child Text(
                      date.day.toString(),
                      style TextStyle(color Colors.white),
                    )),
              ),
              calendarController _controller,
            ),
            Padding(
              padding EdgeInsets.fromLTRB(5, 25, 25, 5)
            ),
            Row(
              children Widget[
                Text(Pick a time ),
              ],
            ),
            Row(
              mainAxisAlignment MainAxisAlignment.center,
              children Widget[
                Text(Select the cut you desire ,style TextStyle(fontWeight FontWeight.bold) ),
           
        DropdownButtonString(
        value dropdownValue,
        icon Icon(Icons.arrow_downward),
        iconSize 20,
        elevation 8,
        style TextStyle(
          color Colors.red
        ),
        underline Container(
          height 5,
          color Colors.black,
        ),
        onChanged (String newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        
        items String['Low Fade', 'Mid Fade ', 'Razor Cut ', 'Crew Cut','Man Bun']
          .mapDropdownMenuItemString((String value) {
            return DropdownMenuItemString(
              value value,
              child Text(value),
            );
          })
          .toList(),
      ),
Padding(
  padding EdgeInsets.all(10),
),   ],
            ),
            Row(
              mainAxisAlignment MainAxisAlignment.end,
              children Widget[
                FlatButton(
                  color Colors.orange,
                  textColor Colors.black,
                  disabledColor Colors.grey,
                  disabledTextColor Colors.black,
                  padding EdgeInsets.all(8.0),
                  splashColor Colors.white,
                  onPressed () {
                    ...
                  },
                  child Text(
                    Make an Appointment,
                    style TextStyle(fontSize 20.0),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
