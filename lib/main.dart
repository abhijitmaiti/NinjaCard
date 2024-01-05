import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

int ninjaLevel = 0;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Text(
            "Ninja ID Card",
            style: TextStyle(
                fontSize: 25,
                color: Colors.amber,
                fontWeight: FontWeight.bold,
                letterSpacing: 5),
          ),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Container(
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
                      radius: 60,
                    ),
                    alignment: Alignment.center,
                  )),
              Container(
                margin: EdgeInsets.fromLTRB(25, 0, 25, 15),
                child: Divider(height: 50, color: Colors.grey),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25, 0, 0, 0),
                child: Text(
                  "NAME",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 01,
                    color: Colors.grey,
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(25, 5, 0, 0),
                  child: Text(
                    "Chun-Li",
                    style: TextStyle(
                        color: Colors.amber[500],
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  )),
              Container(
                margin: EdgeInsets.fromLTRB(25, 20, 0, 0),
                child: Text(
                  "CURRENT NINJA LEVEL",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    color: Colors.grey,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25, 5, 0, 10),
                child: Text(
                  "$ninjaLevel",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.amber[600]),
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                    child: IconButton(
                      onPressed: () {
                        print("hello");
                      },
                      icon: Icon(Icons.mail),
                      iconSize: 30,
                      color: Colors.grey[300],
                    ),
                  ),
                  Container(
                    child: Text(
                      "chun-li696@gmail.com",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              ninjaLevel++;
            });
          },
          child: Icon(
            Icons.add,
            color: Colors.amber,
          ),
          backgroundColor: Colors.grey,
        ),
        
      ),
    );
  }
}
