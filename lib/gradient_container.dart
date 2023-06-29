import 'package:calculator/calculator.dart';
import'package:flutter/material.dart';


class GradientContainer extends StatelessWidget{
  GradientContainer({super.key});



  @override
  Widget build(context){
    return Scaffold(

      body: Calculator(),
    );
  }

}