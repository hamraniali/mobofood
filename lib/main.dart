import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './screens/home.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Color.fromRGBO(73, 1, 169, 1),
    statusBarColor: Color.fromRGBO(73, 1, 169, 1),
  ));

  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'iransans',primarySwatch: Colors.black),
      title: 'MoboFood',
      home: Home()
    )
  );
  
}