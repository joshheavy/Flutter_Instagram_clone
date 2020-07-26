import 'package:flutter/material.dart';
import 'package:instagram/screens/login.dart';

class SignupScreen extends StatefulWidget {
  static final String id = 'signup_screen';
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  GlobalKey<FormState> _key = GlobalKey();
  String _userName;
  String _password;
  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Instagram',
                style: TextStyle(
                  fontFamily: 'Billabong',
                  fontSize: 60.0,
                ),
              ),
              Form(
                key: _key,
                autovalidate: true,
                child: Container(
                  margin: EdgeInsets.all(50.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextFormField(
                        initialValue: _userName,
                        decoration: InputDecoration(labelText: 'Username'),
                        onSaved: (String val) {
                          setState(() {
                            _userName = val;
                            _key.currentState.save();
                          });
                        },
                        validator: (String val) {
                          if (val.trim().isEmpty) {
                            return "Enter your Name";
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        initialValue: _userName,
                        decoration: InputDecoration(labelText: 'Email'),
                        onSaved: (String val) {
                          setState(() {
                            _userName = val;
                            _key.currentState.save();
                          });
                        },
                        validator: (String val) {
                          val.contains('@') ? null : 'Must contain @ character';
                        },
                      ),
                      TextFormField(
                          obscureText: isPassword,
                          decoration: InputDecoration(
                              labelText: 'Password',
                              suffixIcon: IconButton(
                                  icon: Icon(isPassword
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                  onPressed: () {
                                    setState(() {
                                      isPassword = !isPassword;
                                    });
                                  })),
                          onSaved: (String val) {
                            _password = val;
                            _key.currentState.save();
                          },
                          validator: (String val) => val.length < 6
                              ? 'Must be at least 6 Characters'
                              : null),
                      SizedBox(height: 50),
                      Container(
                        width: 250,
                        child: FlatButton(
                            color: Colors.blue,
                            onPressed: () {
                              Navigator.pushNamed(context, LoginPage.id);
                              // if (_key.currentState.validate()) {
                              //   _key.currentState.save();
                              //   Navigator.pushNamed(context, LoginPage.id);
                              // }
                            },
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )),
                      ),
                      Container(
                        width: 250,
                        child: FlatButton(
                            color: Colors.blue,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Back to Sign in',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              )
            ]),
      ),
    );
  }
}
