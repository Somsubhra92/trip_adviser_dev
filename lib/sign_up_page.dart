import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:trip_adviser/dashboard_page.dart';
import 'package:trip_adviser/service_firebase.dart';

import 'backgroundimage.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  String email = '';
  String password = '';

  createProfile()
  {
    final credential = ServiceClass.createProfile(email, password);

    if(credential != null)
    {
      Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardPage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        backgroundimage() ,
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                //  Text("hh"),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 5,
                ),
                Center(
                  child: Text("Sign Up",
                      style: TextStyle(
                        color: Color.fromARGB(255, 240, 173, 49),
                        fontSize: 50,
                        fontWeight: FontWeight.bold,

                      )),
                )  ,
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Color.fromARGB(6, 248, 248, 248),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 20, color: Colors.white),
                            decoration: InputDecoration(
                              prefixIcon:
                              Icon(Icons.person, color: Colors.white),
                              hintText: "Enter your name",
                              hintStyle: TextStyle(color: Color.fromARGB(137, 252, 250, 243)),
                              label: Text(
                                "Full Name",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Color.fromARGB(255, 252, 251, 251), width: 1.0)
                              ),
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
                            onChanged: (val){email = val;},
                            style: TextStyle(
                                fontSize: 20, color: Colors.white),
                            decoration: InputDecoration(
                              prefixIcon:
                              Icon(Icons.mail, color: Colors.white),
                              hintText: "Enter your Email / Mobile No",
                              hintStyle: TextStyle(color: Color.fromARGB(137, 252, 250, 243)),
                              label: Text(
                                "Username",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Color.fromARGB(255, 252, 251, 251), width: 1.0)
                              ),
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
                            onChanged: (val){password=val;},
                            obscureText: true,
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
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      color:
                                      Color.fromARGB(255, 17, 1, 1))),
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
                            obscureText: false,
                            style: TextStyle(
                                fontSize: 20, color: Colors.white),
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.white,
                              ),
                              hintText: "Enter your Password",
                              label: Text(
                                "Confirm Password",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Colors.white)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      color:
                                      Color.fromARGB(255, 17, 1, 1))),
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
                            style: TextStyle(
                                fontSize: 20, color: Colors.white),
                            decoration: InputDecoration(
                              prefixIcon:
                              Icon(Icons.phone, color: Colors.white),
                              hintText: "Enter your Mobile Number",
                              hintStyle: TextStyle(color: Color.fromARGB(137, 252, 250, 243)),
                              label: Text(
                                "Mobile Number",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Color.fromARGB(255, 252, 251, 251), width: 1.0)
                              ),
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
                        SizedBox(
                          height: 30,
                        ),

                        ElevatedButton(
                          onPressed: (){},
                          child: Text("SignUp"),
                          style: ElevatedButton.styleFrom(
                            // primary: Color.fromARGB(255, 165, 84, 8),
                              foregroundColor: Color.fromARGB(255, 248, 242, 233) ,
                              backgroundColor: Color.fromARGB(255, 5, 133, 150),
                              // onSurface: Color.fromARGB(255, 241, 31, 16)
                              // // background
                              // foreground
                              disabledBackgroundColor: Color.fromARGB(209, 51, 50, 50),
                              disabledForegroundColor: Colors.white
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),

        )
      ],
    );
  }
}
