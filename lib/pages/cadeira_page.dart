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
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(
          "Fundamentos do Cuidado Nutricional",
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey[200],
          ),
        ),
      ),
    );
  }
}
