import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Color.fromRGBO(41, 9, 84, 1),
        appBar: AppBar(
          title: Text('رستوران گردی'),
          actions:<Widget>[
            IconButton(icon: Icon(LineIcons.filter), onPressed: () {}, color: Colors.white,),
          ],
          backgroundColor: Color.fromRGBO(73, 1, 169, 1),
          elevation: 0,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromRGBO(245, 54, 86, 1),
          onPressed: () {},
          child: Icon(Icons.shopping_cart,size: 32,),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 5,
          color: Color.fromRGBO(73, 1, 169, 1),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(icon: Icon(LineIcons.user,color: Colors.white,size: 30,),onPressed: () {},),
              IconButton(icon: Icon(LineIcons.star_o,color: Colors.white,size: 30,),onPressed: () {},),
              IconButton(icon: Icon(Icons.location_searching,color: Colors.white,size: 30,),onPressed: () {},),
              IconButton(icon: Icon(LineIcons.home,color: Color.fromRGBO(245, 54, 86, 1),size: 30,),onPressed: () {},),
            ],
          ),
        ),
        body: ListView(

          children: <Widget>[
            Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 13,vertical: 8),
          height: 65,
          color: Color.fromRGBO(73, 1, 169, 1),
          child:Container(
            padding: EdgeInsets.symmetric(horizontal: 10,),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4)
            ),
            child:  TextField(     
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              hintText: 'جستوجو غذا بین هزار رستوران آنلاین...',
              border:InputBorder.none,
              icon: Icon(LineIcons.search,color: Colors.black54,),
              ),
          ),
          ),
        ),
        FlatButton(
          child: ListTile(
            trailing: Text('مشاهده همه' , style: TextStyle(color: Color.fromRGBO(245, 54, 86, 1) , fontSize: 16),),
            contentPadding: EdgeInsets.all(0),
            leading: Text('برترین رستورانها', style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 20),),
          ),
          onPressed: () {},
        ),

        Container(
          width: double.infinity,
          height: 205,
          child: ListView.builder(
            addAutomaticKeepAlives: true,
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context,index) {
              return Container(
                width: 320,
                height: 205,
                padding: EdgeInsets.symmetric(horizontal: 13),
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(5),topLeft: Radius.circular(5)),
                           image: DecorationImage(
                             image:ExactAssetImage('images/pexels-photo-1640772_350x120.jpeg'),
                             fit: BoxFit.cover
                           )),
                      ),
                      Container(
                        width: double.infinity,
                        height: 85,
                        decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(5),bottomLeft: Radius.circular(5)), color: Color.fromRGBO(73, 1, 169, 1)),
                        child: Column(children: <Widget>[
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 3),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            alignment: Alignment.centerRight,
                            child: Text('رستوران همبر سرد',textAlign: TextAlign.right, style: TextStyle(color: Colors.white,fontSize: 18),),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            alignment: Alignment.centerRight,
                            child: Text('تهران - جوادیه',textAlign: TextAlign.right, style: TextStyle(color: Colors.grey[500],fontSize: 14),),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            alignment: Alignment.centerRight,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child: Row(children: <Widget>[
                              Icon(LineIcons.star,color: Color.fromRGBO(255, 175, 32, 1),size: 17,),
                              Icon(LineIcons.star,color: Color.fromRGBO(255, 175, 32, 1),size: 17,),
                              Icon(LineIcons.star,color: Color.fromRGBO(255, 175, 32, 1),size: 17,),
                              Icon(LineIcons.star,color: Color.fromRGBO(255, 175, 32, 1),size: 17,),
                              Icon(LineIcons.star,color: Color.fromRGBO(255, 175, 32, 1),size: 17,),
                            ],
                            ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 110),
                                  child: Text('سفارش غذا' , style: TextStyle(color: Color.fromRGBO(245, 54, 86, 1) , fontSize: 16,fontWeight: FontWeight.w700),),
                                )
                              ],
                            ),
                          ),
                        ],),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        FlatButton(
          child: ListTile(
            trailing: Text('مشاهده همه' , style: TextStyle(color: Color.fromRGBO(245, 54, 86, 1) , fontSize: 16),),
            contentPadding: EdgeInsets.all(0),
            leading: Text('برترین رستورانها', style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 20),),
          ),
          onPressed: () {},
        ),

        
          ],
        )
      )
    );
  }
}