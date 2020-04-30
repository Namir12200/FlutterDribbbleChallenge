import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('Images/night.png'),
                  fit: BoxFit.cover
              )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(30.0),
                child: Image.asset(
                  'Images/day.png',
                  width: 30.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30.0, 20.0, 60.0, 20.0),
                child: Text(
                  'Trip cancelled due to corona',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0
                  ),
                ),
              ),
              SizedBox(height: 25.0,),
              Expanded(
                child: Container(
                  width: width*1.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0)
                    )
                  ),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(25.0, 30.0, 30.0, 0.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                                child: Text(
                                  'Welcome back Alice',
                                  style: TextStyle(
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                              child: CircleAvatar(
                                backgroundImage: AssetImage('Images/night.png'),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 40.0,),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Password',
                            prefixIcon: Icon(Icons.lock_outline),
                          ),
                        ),
                        SizedBox(height: 15.0,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              'Forgot Password?',
                              style: TextStyle(
                                color: Colors.orange,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 60.0,),
                        Container(
                          width: width*0.8,
                          height: 60.0,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)
                            ),
                            onPressed: () {},
                            child: Text(
                              'Sign in',
                              style: TextStyle(
                                color: Colors.white
                              ),
                            ),
                            color: Colors.deepOrange,
                          ),
                        ),
                        SizedBox(height: 18.0,),
                        Text(
                          'or sign in with',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12.0
                          ),
                        ),
                        SizedBox(height: 20.0,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.zero,
                              width: 60.0,
                              child: FlatButton(
                                onPressed: () {},
                                child: Image.asset(
                                  'Images/night.png',
                                  width: 30.0,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.zero,
                              width: 60.0,
                              child: FlatButton(
                                onPressed: () {},
                                child: Image.asset(
                                  'Images/day.png',
                                  width: 30.0,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.zero,
                              width: 60.0,
                              child: FlatButton(
                                onPressed: () {},
                                child: Image.asset(
                                  'Images/day.png',
                                  width: 30.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
