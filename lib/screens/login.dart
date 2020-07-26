import 'package:flutter/material.dart';
import 'package:instagram/screens/home.dart';
import 'package:instagram/screens/signup.dart';

class LoginPage extends StatefulWidget {
  static final String id = 'login_screen';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> _key = GlobalKey();
  String _userName;
  String _password;
  bool isTrue = true;

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
                        decoration:
                            InputDecoration(labelText: 'Username or Email'),
                        onSaved: (String val) {
                          setState(() {
                            _userName = val;
                            _key.currentState.save();
                          });
                        },
                        validator: (String val) {
                          if (val.trim().isEmpty) {
                            return "Enter your Name or Password";
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                          obscureText: isTrue,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            suffixIcon: IconButton(
                              icon: Icon(
                                isTrue ? Icons.visibility : Icons.visibility_off
                              ),
                              onPressed: () {
                                setState(() {
                                  isTrue = !isTrue;
                                });
                              },
                            ),
                          ),
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
                              Navigator.pushNamed(context, HomeScreen.id);
                              // if (_key.currentState.validate()) {
                              //   _key.currentState.save();
                              //   print(_password);
                              //   print(_userName);
                              //   Navigator.pushNamed(context, HomeScreen.id);
                              // }
                            },
                            child: Text(
                              'Log in',
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
                              Navigator.pushNamed(context, SignupScreen.id);
                            },
                            child: Text(
                              'Go to Register',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )),
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: Text('Forgot Password?',
                            style: TextStyle(
                              color: Colors.blue,
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
