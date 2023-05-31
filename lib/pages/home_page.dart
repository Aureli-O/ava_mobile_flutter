// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ava_mobile_flutter/pages/profile_page.dart';
import 'package:ava_mobile_flutter/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/discipline.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

// class _HomePageState extends State<HomePage> {
//   final List _Cadeiras = [
//     "Fundamentos do Cuidado Nutricional",
//     "Práticas Dietéticas",
//     "Nutrição no Processo Saúde Doença",
//     "Integração Metabolica",
//     "Saúde Coletiva",
//   ];
//   final List _Professor = [
//     "Aline Sousa ",
//     "Lívia Queiroz",
//     "Jonas Jonathan",
//     "George Felipe",
//     "Felipe Horácio",
//   ];
//   final List _Horarios = [
//     "4AB",
//     "6CD",
//     "2AB",
//     "5AB-CD",
//     "3EF",
//     "6EF",
//   ];
//   final List _Frequencia = [
//     "90%",
//     "89%",
//     "70%",
//     "100%",
//     "78%",
//     "90%",
//   ];
//   final List _Sala = [
//     "H56",
//     "D46",
//     "D33",
//     "T56",
//     "H34",
//     "D14",
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[200],
//       //appBar
//       appBar: AppBar(
//         backgroundColor: Colors.indigo,
//         title: Text(
//           "Nome Sobrenome",
//           style: TextStyle(
//             fontSize: 18,
//             color: Colors.grey[200],
//           ),
//         ),
//         actions: [
//           GestureDetector(
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => ProfilePage()),
//               );
//             },
//             child: Container(
//               margin: EdgeInsets.only(right: 15),
//               child: Icon(Icons.account_circle_rounded),
//             ),
//           )
//         ],
//       ),
//       //Lista de Cadeiras//usando list view
//       body: ListView.builder(
//         itemCount: _Cadeiras.length,
//         itemBuilder: (context, index) {
//           return MyCard(
//             NomeCadeira: _Cadeiras[index],
//             NomeProfessor: _Professor[index],
//             Horarios: _Horarios[index],
//             Frequencia: _Frequencia[index],
//             Sala: _Sala[index],
//           );
//         },
//       ),
//     );
//   }
// }

class _HomePageState extends State<HomePage> {
  List<Discipline> disciplineM = [
    Discipline(
      name: "Cálculo 1",
      professorImage:
          "https://agendor-blog-uploads.s3.sa-east-1.amazonaws.com/2018/04/02165825/linguagem-corporal-masculina-02.jpg",
      imagePath:
          "https://i.pinimg.com/originals/1b/5b/5a/1b5b5ac9229b1e0b63a5cd77cae23798.jpg",
      professor: "Osvaldo",
      frequency: "100%",
      absences: "03/22",
      hour: "35AB",
      place: "D21",
    ),
    Discipline(
      name: "Lógica de Programação",
      professorImage:
          "https://agendor-blog-uploads.s3.sa-east-1.amazonaws.com/2018/04/02165825/linguagem-corporal-masculina-02.jpg",
      imagePath:
          "https://img.freepik.com/fotos-gratis/plano-de-fundo-de-programacao-com-pessoa-trabalhando-com-codigos-no-computador_23-2150010125.jpg",
      professor: "Gilson",
      frequency: "87%",
      absences: "12/18",
      hour: "35CD",
      place: "D21",
    ),
    Discipline(
      name: "Modelagem e Requisitos de Sistemas",
      professorImage:
          "https://agendor-blog-uploads.s3.sa-east-1.amazonaws.com/2018/04/02165825/linguagem-corporal-masculina-02.jpg",
      imagePath:
          "https://datascience.eu/wp-content/uploads/2019/12/random-forest.jpg",
      professor: "Marcio",
      frequency: "92%",
      absences: "01/18",
      hour: "35EF",
      place: "D12",
    ),
    Discipline(
      name: "Arquitetura de Computadores",
      professorImage:
          "https://agendor-blog-uploads.s3.sa-east-1.amazonaws.com/2018/04/02165825/linguagem-corporal-masculina-02.jpg",
      imagePath:
          "https://previews.123rf.com/images/pdreams/pdreams1405/pdreams140500005/28080238-colorful-random-number-math-background-illustration.jpg",
      professor: "Rubens",
      frequency: "98%",
      absences: "06/18",
      hour: "24CD",
      place: "C12",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        shape: ShapeBorder.lerp(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          null,
          0,
        ),
        title: Text(
          "Bem-vindo!",
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey[200],
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
            child: Container(
              margin: EdgeInsets.only(right: 15),
              child: Icon(Icons.account_circle_rounded),
            ),
          )
        ],
      ),
      body: Card(
        color: Colors.grey[200],
        //elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        margin: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
        child: ListView.builder(
          itemCount: disciplineM.length, // Número de elementos no seu array
          itemBuilder: (context, index) {
            return MyCard(
              discipline: disciplineM[index],
            );
          },
        ),
      ),
    );
  }
}
