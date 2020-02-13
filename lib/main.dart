import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/ui/icons_new_icons.dart';

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
  static Color colorTeal = Colors.teal;

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
  Widget loginButton = new  RaisedButton(
      onPressed: (){},
      color: colorWhite,
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(50.0)
      ),
      textColor: Colors.teal,
      padding: EdgeInsets.all(0.0),
      child: Container(
        width: 120, height: 50, decoration: BoxDecoration( borderRadius: BorderRadius.circular(50.0)),
          child: Row(
        //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text('Login', style: TextStyle(fontSize: 16.0),),
          new Icon(Icons.arrow_forward)
        ],
      )
      ),
    );
  //);
  static Container buildSignUpButton(IconData iconData, Color color){
    return new Container(
      margin: EdgeInsets.fromLTRB(3.0, 0, 3.0, 0.0),
      decoration: BoxDecoration(
          color: colorWhite,
          borderRadius: BorderRadius.circular(100.0)
      ),
      child: new IconButton(
        onPressed: (){},
        icon: new Icon(iconData, color: color,),
        iconSize: 20.0,
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
        buildSignUpButton(IconsNew.facebook_circled, colorTeal),
        buildSignUpButton(IconsNew.google, colorTeal)
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
             decoration: BoxDecoration(
                gradient: new LinearGradient(
                  colors: [Colors.teal, Colors.greenAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  //stops: [0.3, 1],

                )
              ),// <Color>
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    image,
                    inputSection,
                    loginButton,
                    signupSection
                  ]),
            )
        )
    );
  }

}
