import 'package:flutter/material.dart';

void main() => runApp(new MyApp()); //instance uilogin

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Loginpage(),
      theme: new ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class Loginpage extends StatefulWidget {
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage>
    with SingleTickerProviderStateMixin {
  AnimationController _iconanimationController;
  Animation<double> _iconanimation;

  @override
  void initState() {
    super.initState();
    _iconanimationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 400));
    _iconanimation = new CurvedAnimation(
        parent: _iconanimationController, curve: Curves.easeInOut);
    _iconanimation.addListener(() => this.setState(() {}));
    _iconanimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //  resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Center(
            child: Text(
          'Find YourSelf',
        )),
      ),
      backgroundColor: Colors.black,
      // resizeToAvoidBottomPadding: false,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image.asset(
            'assets/dibbo.jpeg',
            fit: BoxFit.cover,
            color: Colors.black54,
            colorBlendMode: BlendMode.darken,
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new FlutterLogo(
                size: _iconanimation.value * 50,
              ),
              new Form(
                child: Theme(
                    data: new ThemeData(
                        brightness: Brightness.dark,
                        primarySwatch: Colors.teal,
                        inputDecorationTheme: new InputDecorationTheme(
                            labelStyle: new TextStyle(
                                color: Colors.tealAccent, fontSize: 15.0))),
                    child: Container(
                      padding: const EdgeInsets.all(20.0),
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new TextFormField(
                            decoration: new InputDecoration(
                                labelText: "Email ID",
                                hintText: "enter email here"),
                          ),
                          new TextFormField(
                            decoration: new InputDecoration(
                                labelText: "Password",
                                hintText: "Enter password"),
                            keyboardType: TextInputType.emailAddress,
                            obscureText: true,
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top: 50.0),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              MaterialButton(
                                color: Colors.teal,
                                child: new Text(
                                  "LOGIN",
                                  style: new TextStyle(color: Colors.white),
                                ),
                                onPressed: () => {},
                                splashColor: Colors.greenAccent,
                              ),
                              SizedBox(
                                width: 142,
                              ),
                              MaterialButton(
                                color: Colors.teal,
                                child: new Text(
                                  "Sign Up",
                                  style: new TextStyle(color: Colors.white),
                                ),
                                onPressed: () => {},
                                splashColor: Colors.greenAccent,
                              )
                            ],
                          )
                        ],
                      ),
                    )),
              )
            ],
          )
        ],
      ),
    );
  }
}
