import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/routes/squares/squares_routes.dart';
import 'package:project/routes/home/home_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomeRoute(),
      routes: {
        'home': (context) => const HomeRoute(),
        'squares': (context) => const SquaresRoute(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("test google font", style: GoogleFonts.lato()),
        ),
        body: Center(
          child: Text(
            "test google font",
            style: GoogleFonts.dancingScript(fontSize: 42, color: Colors.red),
          ),
        ));
  }
}
