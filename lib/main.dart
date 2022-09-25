import 'package:flutter/material.dart';
import 'package:pocket_counselor/HomePage/home_page.dart';
import 'package:pocket_counselor/Landingpage/landing_page.dart';
import 'package:pocket_counselor/NavBar/nav_bar.dart';
import 'package:pocket_counselor/Loginpage/login_page.dart';

void main() {
  runApp(MaterialApp(
    title: 'Named Route Navigation',
    theme: ThemeData(
      // This is the theme of your application.
      primarySwatch: Colors.green,
    ),
    // Start the app with the "/" named route. In this case, the app starts
    // on the FirstScreen widget.
    initialRoute: '/',
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      '/': (context) => MyHomePage(),
      // When navigating to the "/second" route, build the SecondScreen widget.

      '/third': (context) => Loginpage(),
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PC - Pocket Counselor',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "MontSerat",
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(255, 151, 26, 89),
              Color.fromARGB(255, 53, 29, 117)
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Navbar(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: LandingPage(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
