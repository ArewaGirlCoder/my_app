import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    ),
  );
}

class Login extends StatelessWidget {
  static Color colorWhite = Colors.white;

  static Container buildInputSection(IconData icon, String hintText) {
    return new Container(
      margin: EdgeInsets.only(bottom: 14.0),
      child: new TextField(
        style: TextStyle(
            fontSize: 18.0,
            color: colorWhite
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(5.0),
          prefixIcon: new Icon(icon, color: colorWhite,),
          hintText: hintText,
          hintStyle: TextStyle(color: colorWhite),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(3.0)),
              borderSide: BorderSide(color: colorWhite)
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(color: colorWhite)
          ),
        ),
      ),
    );
  }
  Widget inputSection = new Container(
    child: new Column(
      children: [
        buildInputSection(Icons.mail, 'Email'),
        buildInputSection(Icons.lock, 'Password'),
        new Text(
          'Forgot Password?',
          style: TextStyle(
              fontSize: 12.0,
              fontStyle: FontStyle.normal,
              color: colorWhite
          ),
        )
      ],
    ),
  );
  Widget loginButton = new Container(
    padding: EdgeInsets.all(3.0),
    width: 120,
    height: 50,
    child: RaisedButton(
      onPressed: (){},
      color: colorWhite,
      textColor: Colors.teal,
      padding: EdgeInsets.all(0.0),
      child: Row(
        //crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text('Login', style: TextStyle(fontSize: 16.0),),
          new Icon(Icons.arrow_forward)
        ],
      ),
    ),
  );
  static Container buildSignUpButton(IconData iconData){
    return new Container(
      child: new IconButton(
        onPressed: (){},
        icon: new Icon(Icons.add_circle, color: Colors.white),
        iconSize: 64.0,
        padding: EdgeInsets.all(4.0),
      ),
    );
  }
  Widget signupSection = new Container(
    child: new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "or signup with",
          softWrap: true,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        buildSignUpButton(Icons.add_circle),
        buildSignUpButton(Icons.add_circle)
      ],
    ),
  );
  Widget image = new Container(
    child: Image.asset(
      'assets/images/login_icon.png',
      height: 100.0,
      width: 100.0,
      fit: BoxFit.contain,
    ),
  );

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
                    image,
                    inputSection,
                    loginButton,
                    signupSection
                  ]),
            )));
  }

}
