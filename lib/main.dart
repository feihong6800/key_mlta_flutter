import 'package:flutter/material.dart';
import 'package:key_mlta_flutter/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomLayout(),
      ),
    );
  }
}

class CustomLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF195860), // Equivalent to android:background="#195860"
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/mltalogo.png', // Replace with your image asset path
                  width: 300.0,
                  height: 300.0,
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.only(top: 16.0),
                    margin: EdgeInsets.all(16.0),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeActivity()),
                          ); // Handle button click here
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFD6EFEE),
                          // Equivalent to android:backgroundTint="#D6EFEE"
                          padding: EdgeInsets.symmetric(
                            horizontal: 90.0,
                            vertical: 15.0,
                          ),
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(fontSize: 15),
                        ), // Replace with your button text
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
