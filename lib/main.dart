import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: IdCard(),
    ));

class IdCard extends StatefulWidget {
  @override
  _IdCardState createState() => _IdCardState();
}

class _IdCardState extends State<IdCard> {
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("ID Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[800],
        child: Icon(
          Icons.add,
          color: Colors.amber,
        ),
        onPressed: () {
          setState(() {
            ninjaLevel += 1;
          });
        },
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("images/avatar.jpg"),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 30.0,
              color: Colors.grey[700],
            ),
            Text(
              "NAME",
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Oli khan",
              style: TextStyle(
                  color: Colors.amber,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "CURRENT NINJA LEVEL",
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "$ninjaLevel",
              style: TextStyle(
                  color: Colors.amber,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "oli@beeitstudio.com",
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 18.0,
                      letterSpacing: 1.0),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
