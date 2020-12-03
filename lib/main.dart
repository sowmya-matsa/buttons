import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Name(),
    );
  }
}

class Name extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("fill your details"),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 12.0),
          Text(
            "Name:",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          TextField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: 'Full Name'),
            onChanged: (newText) {
              print(newText);
            },
          ),
          Container(
            margin: EdgeInsets.all(10),
          ),
          Text(
            "Email Id:",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          TextField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: 'Emailid'),
            onChanged: (newText) {
              print(newText);
            },
          ),
          Container(
            margin: EdgeInsets.all(10),
          ),
          Multiple(),
          Boolean(),
          Tick(),
          Click(),
          Submit(),
        ]),
      ),
    );
  }
}

class Multiple extends StatefulWidget {
  @override
  _MultipleState createState() => _MultipleState();
}

class _MultipleState extends State<Multiple> {
  int selectedoption = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Gender",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        RadioListTile(
          value: 0,
          title: Text("male"),
          groupValue: selectedoption,
          onChanged: (val) {
            setState(() {
              selectedoption = val;
            });
          },
        ),
        RadioListTile(
          value: 1,
          title: Text("female"),
          groupValue: selectedoption,
          onChanged: (val) {
            setState(() {
              selectedoption = val;
            });
          },
        ),
        RadioListTile(
          value: 2,
          title: Text("others"),
          groupValue: selectedoption,
          onChanged: (val) {
            setState(() {
              selectedoption = val;
            });
          },
        ),
      ],
    );
  }
}

class Boolean extends StatefulWidget {
  @override
  _BooleanState createState() => _BooleanState();
}

class _BooleanState extends State {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Experience",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        Column(
          children: [
            Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                  print(isSwitched);
                });
              },
              activeTrackColor: Colors.white,
              activeColor: Colors.black,
              inactiveThumbColor: Colors.yellow[100],
              inactiveTrackColor: Colors.blue[100],
            ),
          ],
        ),
      ],
    );
  }
}

class Tick extends StatefulWidget {
  @override
  _TickState createState() => _TickState();
}

class _TickState extends State<Tick> {
  bool showvalue = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Graduated",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        CheckboxListTile(
            activeColor: Colors.black,
            value: showvalue,
            title: Text("Completed"),
            onChanged: (value) {
              setState(() {
                this.showvalue = value;
              });
            }),
      ],
    );
  }
}

class Click extends StatefulWidget {
  @override
  _ClickState createState() => _ClickState();
}

class _ClickState extends State<Click> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        child: OutlineButton(
          highlightColor: Colors.black,
          onPressed: () {
            print("Your not a robot");
          },
          child: Text("click the button if u r not a robot"),
        ),
      ),
    );
  }
}

class Submit extends StatefulWidget {
  @override
  _SubmitState createState() => _SubmitState();
}

class _SubmitState extends State<Submit> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SizedBox(width: 18),
      RaisedButton(
        child: Text('Submit'),
        onPressed: () {
          showAlertDialog(context);
        },
      ),
    ]);
  }
}

showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  AlertDialog alert = AlertDialog(
    title: Text("submit"),
    content: Text("Are to sure to submit the data"),
    actions: [
      okButton,
    ],
  );

 

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
    
  );
}
