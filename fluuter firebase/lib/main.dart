import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/auth/SignUp.dart';
import 'package:movieapp/pages/Admin/AdminScreen.dart';
import 'package:movieapp/pages/Admin/Movies/AddMovie.dart';
import 'package:movieapp/pages/Admin/MoviesAdmin.dart';
import 'package:movieapp/pages/Admin/ReservationAdmin.dart';
import 'package:movieapp/pages/Home.dart';
import 'package:movieapp/pages/User/HomePage.dart';
import 'package:movieapp/pages/startScreen.dart';

import 'auth/SignIn.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        brightness: Brightness.dark,
      ),
      home: StartScreen(),
      routes: <String,WidgetBuilder>{
        'signup' : (context){
          return SignUp();
        },
        'login' : (context){
          return LoginScreen();
        },
        'home' : (context){
          return Home();
        },
        'homescreen' : (context){
          return HomeScreen();
        },
        'adminscreen' : (context){
          return AdminScreen();
        },
        'addmovie' : (context){
          return AddMovie();
        },
        'start' : (context){
          return StartScreen();
        },
        'MoviesAdmin' : (context){
          return MovieAdmin();
        },
        'ReservationAdmin' : (context){
          return ReservationAdmin();
        },
      }
    );
  }
}