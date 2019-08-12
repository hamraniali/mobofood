import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class SearchCity extends StatefulWidget {
  @override
  _SearchCityState createState() => _SearchCityState();
}

class _SearchCityState extends State<SearchCity> {
  @override
  Widget build(BuildContext context) {
    return 
       Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(73, 1, 169, 1),
        leading:
          IconButton(icon: Icon(LineIcons.arrow_left),onPressed: () {
            Navigator.of(context).pop();
          },)
      ),
      floatingActionButton: Directionality(
        textDirection: TextDirection.rtl,
        child: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.shopping_cart, size: 26,),
        backgroundColor: Color.fromRGBO(245, 54, 86, 1),
      ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Directionality(
        textDirection: TextDirection.rtl,
        child: BottomAppBar(
        color: Color.fromRGBO(73, 1, 169, 1),
        shape: CircularNotchedRectangle(),
        notchMargin: 5,
        child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(icon: Icon(LineIcons.user,color: Colors.white,),onPressed: () {

              },),
              IconButton(icon: Icon(LineIcons.star_o,color: Colors.white,),onPressed: () {},),
              IconButton(icon: Icon(Icons.location_searching,color: Color.fromRGBO(245, 54, 86, 1),),onPressed: () {},),
              IconButton(icon: Icon(LineIcons.home,color: Colors.white,),onPressed: () {
                Navigator.of(context).popAndPushNamed('/home');
              },),
            ],
          ),
      ),
      ),
    );
  }
}