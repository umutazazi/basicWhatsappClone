import 'dart:ffi';

import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp Demo',
      theme: ThemeData(
        primaryColor: Color(0xff075E54),
        accentColor: Color(0xff025D366)

        
      
    ),
      home: Home(),
    );
  }
}

