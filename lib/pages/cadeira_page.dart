import "package:flutter/material.dart";

class CadeiraPage extends StatefulWidget {
  const CadeiraPage({Key? key}) : super(key: key);

  @override
  State<CadeiraPage> createState() => _CadeiraPageState();
}

class _CadeiraPageState extends State<CadeiraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Text("TELA DA CADEIRA"), //faça bem feito,qualquer coisa faço modificações,mas faça bem feito
    );
  }
}
