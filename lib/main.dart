import 'package:flutter/material.dart';
import'package:calculator/gradient_container.dart';

void main()
{
  runApp(
     MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text("CALCULATOR"),
          backgroundColor: Colors.amberAccent,
        ),
        body:GradientContainer(),
      ),
      ),
    );

}


