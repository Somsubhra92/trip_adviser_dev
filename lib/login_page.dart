import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:trip_adviser/dashboard_page.dart';
import 'package:trip_adviser/service_firebase.dart';
import 'package:trip_adviser/sign_up_page.dart';

import 'package:flutter/material.dart';
import './backgroundimage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  signInWithProfile()
  async {

    // final res = await ServiceClass.getPackageDetails();
    // print(res);
    final user = await ServiceClass.signInWithProfile(email, password);
    if (user != null) {
      print(user);
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => DashboardPage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        backgroundimage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
              child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.transparent,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("Join Us",
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 250, 206, 8)),
                        textAlign: TextAlign.right),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("We make your dreams come true",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        textAlign: TextAlign.right),
                  ),
                  Container(
                    // height: MediaQuery.of(context).size.height / 4,
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: Color.fromARGB(75, 10, 184, 228),
                      child: Column(
                        children: [
                          Form(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Login uing Mobile No or Email / Signup",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 247, 245, 245)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    onChanged: (val) {
                                      email = val;
                                    },
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                    decoration: InputDecoration(
                                      prefixIcon:
                                          Icon(Icons.mail, color: Colors.white),
                                      hintText: "Enter your Email / Mobile No",
                                      hintStyle: TextStyle(
                                          color: Color.fromARGB(
                                              137, 252, 250, 243)),
                                      label: Text(
                                        "Username",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromARGB(
                                                  255, 252, 251, 251),
                                              width: 1.0)),
                                      // border: OutlineInputBorder(
                                      //     borderRadius: BorderRadius.circular(10),
                                      //     borderSide: BorderSide(
                                      //         color:
                                      //             Color.fromARGB(255, 17, 1, 1))),
                                      enabledBorder: const OutlineInputBorder(
                                        // width: 0.0 produces a thin "hairline" border
                                        borderSide: const BorderSide(
                                            color: Color.fromARGB(
                                                255, 255, 253, 253),
                                            width: 0.5),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    obscureText: true,
                                    onChanged: (val) {
                                      password = val;
                                    },
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.lock,
                                        color: Colors.white,
                                      ),
                                      hintText: "Enter your Password",
                                      label: Text(
                                        "Password",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white)),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                              color: Color.fromARGB(
                                                  255, 17, 1, 1))),
                                      enabledBorder: const OutlineInputBorder(
                                        // width: 0.0 produces a thin "hairline" border
                                        borderSide: const BorderSide(
                                            color: Color.fromARGB(
                                                255, 255, 253, 253),
                                            width: 0.5),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              signInWithProfile();
                            },
                            child: Text("Login"),
                            style: ElevatedButton.styleFrom(
                                // primary: Color.fromARGB(255, 165, 84, 8),
                                foregroundColor:
                                    Color.fromARGB(255, 248, 242, 233),
                                backgroundColor:
                                    Color.fromARGB(255, 150, 111, 5),
                                // onSurface: Color.fromARGB(255, 241, 31, 16)
                                // // background
                                // foreground
                                disabledBackgroundColor:
                                    Color.fromARGB(209, 51, 50, 50),
                                disabledForegroundColor: Colors.white),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUpPage(),),);
                            },
                            child: Text("Signup"),
                            style: ElevatedButton.styleFrom(
                              // primary: Color.fromARGB(255, 165, 84, 8),
                                foregroundColor:
                                Color.fromARGB(255, 248, 242, 233),
                                backgroundColor:
                                Color.fromARGB(255, 150, 111, 5),
                                // onSurface: Color.fromARGB(255, 241, 31, 16)
                                // // background
                                // foreground
                                disabledBackgroundColor:
                                Color.fromARGB(209, 51, 50, 50),
                                disabledForegroundColor: Colors.white),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
        )
      ],
    );
  }
}
