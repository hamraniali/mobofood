import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobofood/screens/searchCity.dart';
import './screens/home.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Color.fromRGBO(73, 1, 169, 1),
    statusBarColor: Color.fromRGBO(73, 1, 169, 1),
  ));

  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'iransans'
      ,cursorColor: Colors.grey
      ,),
      title: 'MoboFood',
      home: MyApp(),
      routes: <String,WidgetBuilder> {
        '/home' : (BuildContext context) => Home(),
        '/searchCity' : (BuildContext context) => SearchCity()
      },
    )
  );  
}


class MyApp extends StatefulWidget {
    @override
    _MyAppState createState() => _MyAppState();
  }
  
  class _MyAppState extends State<MyApp> {
    @override
    Widget build(BuildContext context) {
        return new SplashScreen(
        seconds: 9,
        navigateAfterSeconds: new Home(),
        title: new Text('موبوفود' , style: TextStyle(fontSize: 25,color: Colors.white)),
        image: new Image.asset('images/splash.jpg'),
        backgroundColor: Color.fromRGBO(37, 1, 88, 1),
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 60,
        loaderColor: Colors.red
      );
    }
  }