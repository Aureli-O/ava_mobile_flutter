import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/student.dart';
import '../widgets/profile.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Student studentM = const Student(
      imagePath:
          "https://s2.glbimg.com/gZrnzQkY70EZ2ZP0zwB689bUAak=/0x0:5184x3456/1008x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2020/9/e/EYKMBXR72tNdkUAgmZzQ/azul-caneta.jpg",
      name: "João da Silva Pereira",
      email: "joaoSP@unifor.br",
      about:
          "Esta é uma pessoa única e interessante. Ela tem uma curiosidade natural pelo mundo e pelas pessoas ao seu redor. Ela valoriza a honestidade, a empatia e o respeito. Além disso, ela está sempre aberta a novas experiências e desafios, e está animada para ver o que o futuro reserva.",
      registry: "2214763-2",
      ongoingCredits: "360",
      completedCredits: "720",
      course: "Ciências da Computação",
      pmg: "7.52",
      birthday: "19/09/2004");
  // criei esse objeto ai q é so mudar

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
          "Meu perfil",
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey[200],
          ),
        ),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          SizedBox(height: 12),
          Card(
            color: Colors.grey[350],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            margin: EdgeInsets.symmetric(horizontal: 28, vertical: 12),
            child: Column(
              children: [
                SizedBox(height: 24),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: ProfileWidget(
                    imagePath: studentM.imagePath,
                    onClicked: () async {},
                  ),
                ),
                buildName(studentM),
                SizedBox(height: 24),
              ],
            ),
          ),
          // Center(child: buildUpgradeButton()),
          // NumbersWidget(),
          cardNumbers(studentM),
          buildAbout(studentM),
        ],
      ),
    );
  }

  Widget buildName(Student student) => Column(
        children: [
          Text(
            student.name,
            style: TextStyle(
                color: Colors.grey[900],
                fontWeight: FontWeight.bold,
                fontSize: 22),
          ),
          const SizedBox(height: 4),
          Text(
            student.registry,
            style: TextStyle(color: Colors.grey[600], fontSize: 16),
          ),
          const SizedBox(height: 4),
          Text(
            student.email,
            style: TextStyle(color: Colors.grey[600], fontSize: 16),
          ),
          const SizedBox(height: 16),
          Text(
            student.course,
            style: TextStyle(
                color: Colors.grey[900],
                fontWeight: FontWeight.normal,
                fontSize: 18),
          )
        ],
      );

  Widget cardNumbers(Student student) => Card(
        color: Colors.grey[350],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        margin: EdgeInsets.symmetric(horizontal: 28, vertical: 12),
        child: Padding(
          padding: EdgeInsets.all(28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'PMG: ${student.pmg}',
                style: TextStyle(color: Colors.grey[900],fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              Text(
                'Créditos cursados: ${student.completedCredits}',
                style: TextStyle(color: Colors.grey[900],fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              Text(
                'Créditos em curso: ${student.ongoingCredits}',
                style: TextStyle(color: Colors.grey[900],fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      );
  // Widget buildUpgradeButton() => ButtonWidget(
  //   text: 'Upgrade To PRO',
  //   onClicked: () {},
  // );

  Widget buildAbout(Student student) => Card(
        color: Colors.grey[350],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        margin: EdgeInsets.symmetric(horizontal: 28, vertical: 12),
        child: Padding(
          padding: EdgeInsets.all(28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sobre mim',
                style: TextStyle(
                    color: Colors.grey[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
              SizedBox(height: 8.0),
              Text(
                student.about,
                style: TextStyle(
                    color: Colors.grey[900],
                    fontWeight: FontWeight.normal,
                    fontSize: 16),
              ),
            ],
          ),
        ),
      );
}
