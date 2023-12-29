
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class RespostaComp extends StatelessWidget {
  final String resposta;
  final void Function() onSelected;

  const RespostaComp(this.resposta, this.onSelected,{super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.zero))
        ),
        onPressed: onSelected, 
        child: Text(
          resposta, 
          style: TextStyle(
            color: Colors.white, 
            fontWeight: FontWeight.bold
            ),
        )
      
        ),
    );
  }
}