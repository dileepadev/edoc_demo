import 'package:edoc/views/drawerItems/Home.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginDesign(),
    );
  }
}

class LoginDesign extends StatefulWidget {
  @override
  _LoginDesignState createState() => _LoginDesignState();
}

class _LoginDesignState extends State<LoginDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width,
          ),
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 45.0, horizontal: 2.0),
                  child: Column(
                    children: [
                      Text(
                        "Hello Doctor",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 26.0,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 12),
                      Image.asset(
                        'assets/images/edoc_login.png',
                        height: 120,
                        width: 120,
                      ),
                      SizedBox(height: 12),
                      Text(
                        "Welcome",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.0,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 12),
                      Text(
                        "Please enter your registered mobile number",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide.none,
                                ),
                                filled: true,
                                fillColor: Colors.grey.shade200,
                                hintText: "Mobile Number"),
                            keyboardType: TextInputType.phone),
                        SizedBox(height: 30),
                        Material(
                          borderRadius: BorderRadius.circular(12.0),
                          color: Colors.grey.shade800,
                          child: MaterialButton(
                            minWidth: double.infinity,
                            padding:
                                EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                            onPressed: () {
                              print("Home");
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (_) {
                                return HomePage();
                              }));
                            },
                            child: Text("Login",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 20.0).copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            new GestureDetector(
                              onTap: () {
                                /*Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (_) {
                                  return HomePage();
                                }));*/
                                print("Register");
                              },
                              child: new Text(
                                "Register with New Number",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16.0),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "   We will send OTP On\nRegister mobile number",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300, fontSize: 16.0),
                            ),
                          ],
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
