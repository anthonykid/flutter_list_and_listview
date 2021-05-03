import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = []; //list widgets
  int counter = 1; //counter for the program to start the data from number 1

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListView Practice"),
          backgroundColor: Colors.green,
        ),
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceAround, //spaceround so it divided equally for both
              children: <Widget>[
                RaisedButton(
                  child: Text("Add Data"),color: Colors.blue,
                  onPressed: () {
                    setState(() {//making an anonymous method
                      //dont forget to set state to make the onpressed got updated to screen
                      widgets.add(Text(
                        "Data - " +
                            counter.toString(), //inside the widgets text
                        style: TextStyle(
                            fontSize: 50, color: Colors.grey), //text style for the font in listview
                            
                      ));
                      counter++;
                    });
                  },
                ), // button 1 to add data
                RaisedButton(
                    child: Text("Erase Data"),color: Colors.cyan,
                    onPressed: () {
                      setState(() { //making an anonymous method
                        widgets.removeLast(); //undo move
                        counter--; //dont forget to - the counter
                      });
                    }),
                // button 2 to erase data
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment
                  .start, //making the list on the start of the screen or full to the left
              children: widgets, //calling the widgets of list again
            )
          ],
        ),
      ),
    );
  }
}
