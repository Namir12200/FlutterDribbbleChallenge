import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('Images/night.jpg'),
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
                padding: EdgeInsets.fromLTRB(30.0, 20.0, 60.0, 20.0),
                child: Text(
                  'Trip cancelled due to corona',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.fromLTRB(0.0, 25.0, 0.0, 0.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0),
                    )
                  ),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(25.0, 30.0, 30.0, 0.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.fromLTRB(0.0, 0.0, 50.0, 0.0),
                                child: Text(
                                  'New Account',
                                  style: TextStyle(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Container(
                                      margin: EdgeInsets.fromLTRB(60.0, 0.0, 0.0, 0.0),
                                      padding: EdgeInsets.all(2.0),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          width: 1,
                                          color: Colors.yellow
                                        )
                                      ),
                                      child: IconButton(
                                        icon: Icon(
                                          Icons.camera_alt,
                                          color: Colors.black,
                                        ),
                                      )
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(60.0, 5.0, 0.0, 0.0),
                                    child: Text(
                                      'Upload picture',
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.grey
                                      ),
                                    )
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 40.0,),
                        Form(
                          child: Column(
                            children: <Widget>[
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Email',
                                    prefixIcon: Icon(
                                        Icons.mail_outline,
                                        size: 20.0,
                                    )
                                ),
                              ),
                              SizedBox(height: 20.0,),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Username',
                                  prefixIcon: Icon(Icons.person_outline)
                                ),
                              ),
                              SizedBox(height: 20.0,),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Password',
                                  prefixIcon: Icon(Icons.lock_outline)
                                ),
                                obscureText: true,
                              ),
                              SizedBox(height: 40.0,),
                              RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0)
                                ),
                                color: Colors.deepOrange,
                                onPressed: () {},
                                child: Container(
                                  width: width*0.8,
                                  height: 45.0,
                                  child: Center(
                                    child: Text(
                                      'Sign up',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.white
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
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
