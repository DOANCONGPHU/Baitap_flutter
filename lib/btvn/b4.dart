
import 'dart:math' as math;
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) { 
    return  const MaterialApp( 
      title: 'Material App',
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => HomeReal();
}
bool _singupCheck = true;
class HomeReal extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Color.fromARGB(255, 209, 72, 234),
                Color.fromARGB(255, 255, 188, 117)
              ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Transform.rotate(
                angle: -math.pi / 20.0,
                child: Container(
                    height: 60,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70),
                      color: const Color.fromARGB(255, 162, 14, 3),
                    ),
                    child: const Center(
                      child: Text(
                        "MYSHOP",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 40,
                            fontWeight: FontWeight.w700),
                      ),
                    )),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),

                width: 250,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                ///////////////////////
                child: Column(
                  children: [
                    ///////////////////////////
                    const TextField(
                      decoration: InputDecoration(
                        labelText: "E Mail",
                        labelStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                    /////////////////////////////
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                    /////////////////////////////
                    if (_singupCheck == false)
                      const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Confirm Password",
                          labelStyle: TextStyle(color: Colors.grey),
                        ),
                      ),

                    //////////////////////////
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                        backgroundColor:
                            const Color.fromARGB(255, 176, 39, 165),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      child: const Text("LOGIN"),
                    ),
                    ///////////
                    const SizedBox(height: 10),
                    /////////////
                    
                    if(_singupCheck==false)
                      InkWell(
                        onTap: () {
                          setState(() {
                            _singupCheck = true;
                          });
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(1),
                          child: Text(
                            "LOGIN INSTEAD",
                            style: TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    if(_singupCheck==true) 
                      InkWell(
                      onTap: () {
                        setState(() {
                          _singupCheck=false;
                        });
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(1),
                        child: Text(
                          "SINGUP INSTEAD",
                          style: TextStyle(
                            color: Colors.purple,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    //////////////////////
                    const SizedBox(height: 10)
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
