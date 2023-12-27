import 'package:flutter/material.dart';

class RespostaComp extends StatelessWidget {
  final String resposta;
  const RespostaComp(this.resposta,{super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:() {}, 
      child: Text(resposta)
      );
  }
}