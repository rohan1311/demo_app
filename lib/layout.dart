import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Layout extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Layout', style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,),
          onPressed: (){Navigator.pop(context);},
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 70.0,
                height: 70.0,
                decoration: new BoxDecoration(
                  color: Colors.grey.shade200,
                  shape: BoxShape.circle,
                ),
              ),
              Icon(Icons.add),
              Container(
                width: 60.0,
                height: 60.0,
                decoration: new BoxDecoration(
                  border: Border.all(width: 2, color: Colors.white),
                  color: Colors.grey.shade200,
                  shape: BoxShape.circle,
                ),
              ),
              Icon(Icons.add),
              Image.asset(
                'assets/lays.png',
                height: 60,
                width: 60,
              ),
            ],
          ),
          //SizedBox(height: 50,),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 300.0,
                height: 300.0,
                decoration: new BoxDecoration(

                  color: Colors.grey.shade200,
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                width: 250.0,
                height: 250.0,
                decoration: new BoxDecoration(
                  border: Border.all(width: 2, color: Colors.white),
                  color: Colors.grey.shade200,
                  shape: BoxShape.circle,
                ),
              ),
              Positioned(
                bottom: 0,
                child: Image.asset(
                  'assets/lays.png',
                  height: 250,
                  width:250,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}