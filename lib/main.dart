import 'package:demo_app/layout.dart';
import 'package:demo_app/scoreIcon.dart';
import 'package:demo_app/vegIcon.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Design Basics',
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Menu', style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body:Center (
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => VegIcon()));
            }, child: Text('Veg/Non Veg icon')),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Score()));
            }, child: Text('Score icon')),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Layout()));
            }, child: Text('Demo Layout')),
          ],
        ),
      ),
    );
  }
}