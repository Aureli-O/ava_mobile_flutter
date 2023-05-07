import "package:flutter/material.dart";

import '../models/discipline.dart';
import '../widgets/profile.dart';

class CadeiraPage extends StatefulWidget {
  const CadeiraPage({Key? key}) : super(key: key);

  @override
  State<CadeiraPage> createState() => _CadeiraPageState();
}

class _CadeiraPageState extends State<CadeiraPage> {


  Discipline disciplineM = const Discipline(
    name: "Fundamentos do Cuidado Nutricional",
    professorImage: "https://agendor-blog-uploads.s3.sa-east-1.amazonaws.com/2018/04/02165825/linguagem-corporal-masculina-02.jpg",
    imagePath: "https://img.freepik.com/fotos-gratis/plano-de-fundo-de-programacao-com-pessoa-trabalhando-com-codigos-no-computador_23-2150010125.jpg",
    professor: "Aline Sousa",
    frequency: "98%",
    absences: "06/18",
    hour: "35CD",
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(
          disciplineM.name,
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey[200],
          ),
        ),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
                child: buildIcon(disciplineM)
            ),
            buildInfos(disciplineM),
            SizedBox(height: 20,),
            buildImageRectangle(disciplineM),
            SizedBox(height: 10,),
            buildAssessments(disciplineM),
            buildUnities(disciplineM)
          ]
      ),
    );
  }

  Widget buildImageRectangle(Discipline discipline) {
    final image = NetworkImage(discipline.imagePath);
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.90,
        height: 130,
        decoration: BoxDecoration(
          color: Colors.grey[350],
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            image: image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget buildIcon(Discipline discipline) {
    final image = NetworkImage(discipline.professorImage);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundImage:  image,
          radius: 40,
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              discipline.professor,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4),
            Text(
              "Professor 2023.1",
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ],
    );
  }


  Widget buildInfos(Discipline discipline) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildColumn(discipline.frequency, "Frequência"),
        _buildColumn(discipline.absences, "Faltas"),
        _buildColumn(discipline.hour, "Horário"),
      ],
    );
  }

  Widget _buildColumn(String topText, String bottomText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          topText,
          style: TextStyle(color: Colors.grey[900],fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 4),
        Text(
          bottomText,
          style: TextStyle(color: Colors.grey[900],fontSize: 18),
        ),
      ],
    );
  }

  Widget buildAssessments(Discipline discipline) => Card(
    color: Colors.grey[350],
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
    margin: EdgeInsets.symmetric(horizontal: 19, vertical: 12),
    child: Padding(
      padding: EdgeInsets.all(28.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Avaliações',
            style: TextStyle(
                color: Colors.grey[900],
                fontWeight: FontWeight.bold,
                fontSize: 24),
          ),
          SizedBox(height: 8.0),
        ],
      ),
    ),
  );
  Widget buildUnities(Discipline discipline) => Card(
    color: Colors.grey[350],
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
    margin: EdgeInsets.symmetric(horizontal: 19, vertical: 12),
    child: Padding(
      padding: EdgeInsets.all(28.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Unidades',
            style: TextStyle(
                color: Colors.grey[900],
                fontWeight: FontWeight.bold,
                fontSize: 24),
          ),
          SizedBox(height: 8.0),
        ],
      ),
    ),
  );


}
