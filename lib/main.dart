// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter_create_word/components/questao.dart';
import 'package:flutter_create_word/components/resposta.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _indicePergunta = 0;

  List perguntas = ["Qual é a sua cor favorita?", "Quantos anos você tem?"];

  void resposta() {
    if (_indicePergunta < perguntas.length) {
      setState(() {
        _indicePergunta++;
      });       
    }else{
      setState(() {
        _indicePergunta = 0;
      });
    }
    print(_indicePergunta);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Ask APP",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          body: Column(
            children: [
              Questao(perguntas[_indicePergunta]),
              RespostaComp("Alternativa 1"),
              RespostaComp("Alternativa 2"),
              RespostaComp("Alternativa 3"),
              RespostaComp("Alternativa 4"),
            ],
          ),
        ));
  }
}
