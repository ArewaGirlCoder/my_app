import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Color colorWhite = Colors.white;

  @override
  Widget build(BuildContext context) {
    return new Material(
        child: Center(
            child: Container(
      padding: EdgeInsets.fromLTRB(32.0, 64.0, 32.0, 32.0),
      color: Colors.teal, // <Color>[Colors.teal, Colors.greenAccent],
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(
              'assets/images/login_icon.png',
              height: 100.0,
              width: 100.0,
              fit: BoxFit.contain,

            ),
            Column(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 16.0),
                    child: TextField(
                        style: TextStyle(fontSize: 18.0, color: Colors.white),
                        decoration: inputDeco
                    )),
                Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 14.0),
                    child: TextField(
                      style: TextStyle(fontSize: 18.0, color: Colors.white),
                      decoration: inputDeco
                    )),
                Text(
                  "Forgot Password?",
                  style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.white,
                      fontStyle: FontStyle.normal),
                ),
              ],
            ),
            FlatButton(
              child: Container(
                color: Colors.white,
                  width: 100.0,
                  height: 40.0,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Login'
                  ),
                ],
              )),
              onPressed: null,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "or signup with",
                  softWrap: true,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  icon: new Icon(Icons.add_circle, color: Colors.white),
                  iconSize: 64.0,
                  padding: EdgeInsets.all(4.0),
                  onPressed: null,
                ),
                IconButton(
                  icon: new Icon(Icons.add_circle, color: Colors.white),
                  iconSize: 64.0,
                  focusColor: Colors.white,
                  padding: EdgeInsets.all(4.0),
                  onPressed: null,
                )
              ],
            ),
          ]),
    )));
  }

  final inputDeco = InputDecoration(
        contentPadding: EdgeInsets.all(5.0),
        prefixIcon: new Icon(Icons.mail, color: Colors.white),
        hintText: 'Email',
        hintStyle: TextStyle(color: Colors.white),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(3.0)),
          borderSide: const BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(10.0)
        ));
  }


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    ),
  );
}
