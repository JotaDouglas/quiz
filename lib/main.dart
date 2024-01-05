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
  int _pontuacaoTotal = 0;

  List<Map<String, Object>> _perguntas = [
    {
      'texto': "Qual é o seu time favorito?",
      'resposta': [
        {"texto":"Corinthians", "pontuacao":10},
        {"texto":"Real Madrid", "pontuacao":5},
        {"texto":"Manchester City", "pontuacao":2},
      ]
    },
    {
      'texto': "Qual é a sua cidade favorita?",
      'resposta': [
        {"texto":"São Paulo","pontuacao":10},
        {"texto":"Salvador","pontuacao":5},
        {"texto":"New Yorik","pontuacao":2},
      ]
    },
    {
      'texto': "Qual é o seu esporte favorito?",
      'resposta': [
        {"texto":"Futebol","pontuacao":10},
        {"texto":"Basquete","pontuacao":5},
        {"texto":"Futebol Americano","pontuacao":5},
      ]
    },
  ];

  void resposta(int pontuacao) {
    if (finalDasPerguntas) {
      setState(() {
        _indicePergunta++;
        _pontuacaoTotal+= pontuacao;
      });
    }
    print(_pontuacaoTotal);
    finalDasPerguntas;
  }

  bool get finalDasPerguntas {
    return _indicePergunta < _perguntas.length;
  }

  void reiniciarQuestionario(){
    setState(() {
      _indicePergunta = 0;
      _pontuacaoTotal = 0;
    });
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
          body: finalDasPerguntas
              ? Questionario(
                  perguntas: _perguntas,
                  indicePergunta: _indicePergunta,
                  resposta: resposta,
                )
              : Resultado(_pontuacaoTotal, reiniciarQuestionario)),
    );
  }
}
