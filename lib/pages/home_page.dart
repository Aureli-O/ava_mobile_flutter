// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ava_mobile_flutter/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List _Cadeiras = [
    "Fundamentos do Cuidado Nutricional",
    "Práticas Dietéticas",
    "Nutrição no Processo Saúde Doença",
    "Integração Metabolica",
    "Saúde Coletiva",
  ];
  final List _Professor = [
    "nome1",
    "nome2",
    "nome3",
    "nome4",
    "nome5",
  ];
  final List _Horarios = [
    "4AB",
    "6CD",
    "2AB",
    "5AB-CD",
    "3EF",
    "6EF",
  ];
  final List _Frequencia = [
    "90%",
    "89%",
    "70%",
    "100%",
    "78%",
    "90%",
  ];
  final List _Sala = [
    "H56",
    "D46",
    "D33",
    "T56",
    "H34",
    "D14",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      //appBar
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(
          "Nome Sobrenome",
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey[200],
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 15),
            child: Icon(Icons.account_circle_rounded),
          ),
        ],
      ),
      //Lista de Cadeiras//usando list view
      body: ListView.builder(
        itemCount: _Cadeiras.length,
        itemBuilder: (context, index) {
          return MyCard(
            NomeCadeira: _Cadeiras[index],
            NomeProfessor: _Professor[index],
            Horarios: _Horarios[index],
            Frequencia: _Frequencia[index],
            Sala: _Sala[index],
          );
        },
      ),
    );
  }
}
