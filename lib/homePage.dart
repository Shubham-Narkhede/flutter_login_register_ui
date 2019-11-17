import 'package:flutter/material.dart';
import 'package:flutter_login_register_ui/loginPage.dart';
import 'package:flutter_login_register_ui/registerPage.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: <Color>[
            Colors.amber,
            Colors.red,
          ],
              stops: [
            0.0,
            1.0
          ],
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              tileMode: TileMode.repeated)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/main_page.jpg',
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 0.4,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: MaterialButton(
                  color: Colors.white,
                  splashColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.black)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => loginPage()));
                  },
                  child: Text("Login"),
                )),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: MaterialButton(
                  color: Colors.white,
                  splashColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.black)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => registerPage()));
                  },
                  child: Text("Register Now"),
                )),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text('Now! Quick login use Touch ID',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 15,
            ),
            Icon(
              Icons.fingerprint,
              color: Colors.white,
              size: 60,
            ),
            SizedBox(
              height: 10,
            ),
            Text('Use Touch ID',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                )),
          ],
        ),
      ),
    ));
  }
}
