// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  const Resultado({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Parabéns você Concluiu!", 
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold
      ),),
    );
  }
}
