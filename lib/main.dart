// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const NinjaCard());
}

class NinjaCard extends StatefulWidget {
  const NinjaCard({Key? key}) : super(key: key);

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int level = 0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.grey[900],
          appBar: AppBar(
            title: Text('Ninja ID Card'),
            centerTitle: true,
            backgroundColor: Colors.grey[850],
            elevation: 0,
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() => level += 1);
            },
            child: Icon(Icons.add),
            backgroundColor: Colors.grey[800],
          ),
          body: Padding(
            padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/chunli.jpg'),
                    radius: 50,
                  ),
                ),
                Divider(
                  height: 80,
                  color: Colors.grey[600],
                ),
                Text(
                  'Name'.toUpperCase(),
                  style: TextStyle(
                    color: Colors.grey[200],
                    letterSpacing: 2,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Chun-Li',
                  style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'Current ninja level'.toUpperCase(),
                  style: TextStyle(
                    color: Colors.grey[200],
                    letterSpacing: 2,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  level.toString(),
                  style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.grey[400],
                    ),
                    SizedBox(width: 10),
                    Text(
                      'chun.li@gmail.com',
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 18,
                        letterSpacing: 1,
                      ),
                    )
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
