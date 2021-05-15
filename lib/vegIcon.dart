import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VegIcon extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Veg Icon', style: TextStyle(color: Colors.black),),
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.crop_square_sharp, color: Colors.green, size: 36,),
              Icon(Icons.add),
              Icon(Icons.circle, color: Colors.green, size: 14),
              Icon(Icons.drag_handle_rounded),
              Stack(
                alignment: Alignment.center,
                children: [
                  Icon(Icons.crop_square_sharp, color: Colors.green, size: 36,),
                  Icon(Icons.circle, color: Colors.green, size: 14),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}