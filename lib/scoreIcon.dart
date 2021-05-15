import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Score extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Score Icon', style: TextStyle(color: Colors.black),),
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
              Container(
                  margin: EdgeInsets.all(4),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(width: 1.5, color: Colors.green[200]),),
                  child: Text(
                    "82",
                    style: TextStyle(
                      color: Colors.green[300],
                      fontSize: 15.0,
                    ),
                  )
              ),
              Icon(Icons.add),
              Icon(Icons.info_outline, color: Colors.green[300], size: 14),
              Icon(Icons.drag_handle_rounded),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                      margin: EdgeInsets.all(4),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(width: 1.5, color: Colors.green[200]),),
                      child: Text(
                        "82",
                        style: TextStyle(
                          color: Colors.green[300],
                          fontSize: 15.0,
                        ),
                      )
                  ),
                  Positioned(
                      bottom: 2,
                      right: 2,
                      child: Container(
                        color: Colors.white,
                        child: Icon(Icons.info_outline, color: Colors.green[300], size: 14),
                      ),
                    ),
                ],
              ),
            ],
          ),

        ],
      ),
    );
  }
}