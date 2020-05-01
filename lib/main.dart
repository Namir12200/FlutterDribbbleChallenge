import 'package:flutter/material.dart';
import 'package:flutterapptrip/sign-in.dart';
import 'package:flutterapptrip/sign-up.dart';

void main() => runApp(MaterialApp(
  routes: {
    '/' : (context) => Home(),
    '/SignIn' : (context) => SignIn(),
    '/SignUp' : (context) => SignUp()
  },
));

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('Images/night.jpg',),
                fit: BoxFit.cover
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(30.0),
                  child: Image.asset(
                    'Images/Dribbble.jpg',
                    width: 30.0,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(30.0, 10.0, 60.0, 0.0),
                  child: Text(
                    'Trip cancelled due to Corona',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0
                    ),
                  ),
                ),
                SizedBox(
                  height: 280.0,
                ),
                Center(
                  child: Container(
                    width: 250.0,
                    height: 60.0,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/SignUp');
                      },
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)
                      ),
                      color: Colors.deepOrangeAccent,
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
                    width: 250.0,
                    height: 60.0,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/SignIn');
                      },
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                            color: Colors.deepOrange
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)
                      ),
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
        ),
      ),
    );
  }
}

