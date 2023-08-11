
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

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color.fromARGB(255, 209, 72, 234), Color.fromARGB(255, 255, 188, 117)])),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container( 
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              height: 200,
              width: 200,
                decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
                child:  Column(
                  children: [
                    const TextField(
                      decoration: InputDecoration(
                        labelText: "E Mail",
                        labelStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                    
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                    onPressed: () {

                    },
                    style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 176, 39, 165),
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    ), 
                    child: const Text("LOGIN"),
                    ),
                    const SizedBox(height: 10),
                    const Text("SINGUP INSTEAD",
                    style: TextStyle(
                      color: Colors.purple,
                      fontWeight: FontWeight.w500,
                      
                    ),),
                  ],
                  
                ),
                
              )
          ],
        ),
        ),
        )
        
      ),
    );
  }

}