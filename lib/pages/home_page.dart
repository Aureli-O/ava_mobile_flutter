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
    "Cadeira 1",
    "Cadeira 2",
    "Cadeira 3",
    "Cadeira 4",
    "Cadeira 5",
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
          );
        },
      ),
    );
  }
}
