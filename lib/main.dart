// ignore_for_file: prefer_const_constructors, prefer_final_fields, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_create_word/components/questionario.dart';
import 'package:flutter_create_word/components/resultado.dart';

void main() {
  runApp(MyApp());
}
 
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _indicePergunta = 0;

  List<Map<String, Object>> _perguntas = [
    {'texto': "Qual é o seu time favorito?",
    'resposta': ["Corinthians", "Santos", "Botafogo"]},
    {'texto': "Qual é a sua cidade favorita?",
    'resposta': ["São Paulo", "Salvador", "curitiba"]},
    {'texto': "Que dia é hoje?",
    'resposta': ["Segunda-Feira", "Quarta-Feira", "Não sei"]},
    ];

  void resposta() {
    if (finalDasPerguntas) {
      setState(() {
        _indicePergunta++;
      });       
    }
    finalDasPerguntas;
  }

  bool get finalDasPerguntas{
    return _indicePergunta < _perguntas.length;
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
          body: finalDasPerguntas? 
          Questionario(
            perguntas: _perguntas, 
            indicePergunta: _indicePergunta, 
            resposta: resposta,
            )
          : Resultado()
        ),
          
        );
  }
}
