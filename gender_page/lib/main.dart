import 'package:flutter/material.dart';
import 'package:gender_page/gender_screen.dart';

void main(){
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GenderScreen(),
    )
  );
}