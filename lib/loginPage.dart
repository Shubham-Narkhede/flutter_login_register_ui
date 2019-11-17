import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _loginPage();
}

class _loginPage extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.black12,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  ClipPath(
                    clipper: TopWaveClipper(),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: <Color>[
                          Colors.red,
                          Colors.yellow,
                        ], begin: Alignment.topLeft, end: Alignment.center),
                      ),
                      height: MediaQuery.of(context).size.height / 2.5,
                    ),
                  ),
                  Image.asset(
                    'assets/burger.png',
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width * 0.8,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: <Widget>[

                ClipPath(
                clipper: FooterWaveClipper(),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: <Color>[
                          Colors.blue,
                          Colors.lightBlueAccent
                        ],
                        begin: Alignment.center,
                        end: Alignment.bottomRight),
                  ),
                  height: MediaQuery.of(context).size.height / 3,
                ),
              ),

                    Column(
//                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        Text('Hello',
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        Text('Sign into your Account',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                            padding: EdgeInsets.only(right: 40, bottom:10),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.08,
                              width: MediaQuery.of(context).size.width - 40,
                              child: Material(
                                elevation: 10,
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    // bottomRight: Radius.circular00),
                                    topRight: Radius.circular(35),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 20, right: 20, top: 10, bottom: 10),
                                  child: TextField(
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      labelText: "Email",
                                      labelStyle: TextStyle(
                                          color: Colors.black45, fontSize: 14),
                                      // hintText: "Email",
                                      // hintStyle: TextStyle(color: Color(0xFFE1E1E1), fontSize: 14)
                                    ),
                                  ),
                                ),
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.only(right: 40, bottom: 5),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.08,
                              width: MediaQuery.of(context).size.width - 40,
                              child: Material(
                                elevation: 10,
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    // bottomRight: Radius.circular00),
                                    topRight: Radius.circular(35),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 20, right: 20, top: 10, bottom: 10),
                                  child: TextField(
                                    obscureText: true,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      labelText: "Password",
                                      labelStyle: TextStyle(
                                          color: Colors.black45, fontSize: 14),
                                      // hintText: "Email",
                                      // hintStyle: TextStyle(color: Color(0xFFE1E1E1), fontSize: 14)
                                    ),
                                  ),
                                ),
                              ),
                            )),

                        Align(
                            alignment: Alignment.centerRight,
                            child: Text('Forget your password?',style: TextStyle(fontWeight: FontWeight.bold),)
                        ),


                        SizedBox(height: 5,),
                        roundedRectButton('Login',[  Colors.pink,
                        Colors.amber,]),



                        SizedBox(height: 5,),
                        Text('or using social media',style: TextStyle(fontWeight: FontWeight.bold),),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[

                            Image.asset('assets/facebook.png',height: 50,),
                            Image.asset('assets/insta.png',height: 50,),

                          ],
                        )
                      ],
                    ),
                  ],
                )
              ),


              SizedBox(height: 15,),
              RichText(text: TextSpan(text: 'Do not have account? ',
              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
              children: <TextSpan>[

                  new TextSpan(
                  text: 'Register Now',
                  style: new TextStyle(fontWeight: FontWeight.bold, decoration: TextDecoration.underline,color: Colors.red)),

              ]),
              )
            ],
          )),
    ));
  }
}


Widget roundedRectButton(
    String title, List<Color> gradient ) {
  return Builder(builder: (BuildContext mContext) {
    return InkWell(
      onTap: null,
      splashColor: Colors.lightBlue,
      child:  Container(
        alignment: Alignment.center,
        height: MediaQuery.of(mContext).size.height * 0.05,
        width: MediaQuery.of(mContext).size.width / 3,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0)),
          gradient: LinearGradient(
              colors: gradient,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        child: Text(title,
            style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500)),
      ),
    );
  });
}

class TopWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // This is where we decide what part of our image is going to be visible.
    var path = Path();
    path.lineTo(0.0, size.height);

    var firstControlPoint = new Offset(size.width / 7, size.height - 30);
    var firstEndPoint = new Offset(size.width / 6, size.height / 1.5);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint = Offset(size.width / 5, size.height / 4);
    var secondEndPoint = Offset(size.width / 1.5, size.height / 5);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    var thirdControlPoint =
        Offset(size.width - (size.width / 9), size.height / 6);
    var thirdEndPoint = Offset(size.width, 0.0);
    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
        thirdEndPoint.dx, thirdEndPoint.dy);

    ///move from bottom right to top
    path.lineTo(size.width, 0.0);

    ///finally close the path by reaching start point from top right corner
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class FooterWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(size.width, 0.0);
    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);
    path.lineTo(0.0, size.height - 60);
    var secondControlPoint = Offset(size.width - (size.width / 6), size.height);
    var secondEndPoint = Offset(size.width, 0.0);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}