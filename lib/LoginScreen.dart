import 'package:flutter/material.dart';
import './HomeScreen/HomeScreenHorizontal.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 10.0, bottom: 10.0, right: 10.0),
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 50.0,
                ),
                Image.asset("images/Photos/notshi-logo.png"),
                SizedBox(
                  height: 35.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ///////////////////Email\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
                    Padding(
                      padding: const EdgeInsets.only(left: 45,bottom: 10),
                      child: Text(
                        "Email",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: Container(
                        height: 50,
                        width: 350,
                        child: TextField(
                          //style: Theme.of(context).textTheme.display1,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: "   usermail@gmail.com",
                            hintStyle: TextStyle(fontSize: 15),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30.0)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    /////////////////////Password\\\\\\\\\\\\\\\\\\\\\\\\\\\
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 45,bottom: 10),
                          child: Text(
                            "Password",
                            style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 40,bottom: 10),
                          child: InkWell(
                            child: Text("Forget Your Password?",
                                style: TextStyle(
                                    color: Colors.deepOrange, fontSize: 14.0)),
                            onTap: () => print("Forget Password"),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: Container(
                        height: 50,
                        width: 400,
                        child: TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: "   Password",
                            hintStyle: TextStyle(fontSize: 15),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30.0)),
                            ),
                          ),
                          obscureText: true,
                        ),
                      ),
                    ),
                  ],
                ),

                /////////////////////////////Login Button\\\\\\\\\\\\\\\\\\\\\\\
                SizedBox(
                  height: 35.0,
                ),
                Container(
                  height: 50.0,
                  width: 305.0,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                        side: BorderSide(color: Colors.black)),
                    color: Colors.black,
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.bold),
                    ),
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomeScreenHorizontal())),
                  ),
                ),
                /////////////////////////SignUp\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
                SizedBox(
                  height: 50.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("I dont have an account! ",
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                    InkWell(
                      child: Text("Sign Up",
                          style: TextStyle(
                              color: Colors.deepOrange, fontSize: 16.0)),
                      onTap: () => print("SignUp"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
