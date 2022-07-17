// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:to_do_app_bloc/layout/home_layout.dart';
import 'package:to_do_app_bloc/shared/bloc_observer.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';

void main() {

  BlocOverrides.runZoned(
        ()
    {
      runApp(const MyApp());
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.indigo,
        primaryColor: HexColor('ffffff'),
        shadowColor: HexColor('38aa9a'),
        splashColor: HexColor('38aa9a'),
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreenView(
        navigateRoute: HomeLayout(),
        duration: 3000,
        imageSize: 300,
        imageSrc: "assets/images/todo_splash.png",
      )
    );
  }
}
