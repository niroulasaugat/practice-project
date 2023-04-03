import 'package:flutter/material.dart';


 Widget Appbar(double newHeight, double newWidth) {
    return Container(
            padding: EdgeInsets.only( top: newHeight* 0.018, ),
            height: newHeight * 0.08,
            width: newWidth,
            
            decoration: BoxDecoration(
             
              color: Color.fromARGB(255, 1, 28, 70),
              border: Border(
                bottom: 
                BorderSide(width: newWidth* 0.001, color: Colors.white))),
            child: Row(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.menu, color: Colors.white, size: 35,)),
                Expanded(child: Center(child: Text('Staff Hierarchy', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),))),
              ],
            ),
          );
  }
