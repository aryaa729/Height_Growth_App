import 'package:flutter/material.dart'; import 'dart:async';

void main() { runApp(HeightGrowthApp()); }

class HeightGrowthApp extends StatelessWidget { @override Widget build(BuildContext context) { return MaterialApp( debugShowCheckedModeBanner: false, title: 'Height Growth', theme: ThemeData( primarySwatch: Colors.blue, ), home: SplashScreen(), ); } }

class SplashScreen extends StatefulWidget { @override _SplashScreenState createState() => _SplashScreenState(); }

class _SplashScreenState extends State<SplashScreen> { @override void initState() { super.initState(); Timer(Duration(seconds: 3), () { Navigator.pushReplacement( context, MaterialPageRoute(builder: (context) => HomeScreen()), ); }); }

@override Widget build(BuildContext context) { return Scaffold( backgroundColor: Colors.blueAccent, body: Center( child: Text( 'Height Growth', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white), ), ), ); } }

class HomeScreen extends StatelessWidget { @override Widget build(BuildContext context) { return Scaffold( appBar: AppBar( title: Text('Height Growth Exercises'), ), body: Center( child: Text( 'Welcome to Height Growth App! Start your exercises.', textAlign: TextAlign.center, style: TextStyle(fontSize: 20), ), ), ); } }

