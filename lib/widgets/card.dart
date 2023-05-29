// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/discipline.dart';
import '../pages/cadeira_page.dart';

class MyCard extends StatelessWidget {
  final Discipline discipline;

  const MyCard({
    Key? key,
    required this.discipline,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Shadow> _txtShadow = <Shadow>[
      Shadow(
        offset: Offset(-1.0, -1.0),
        blurRadius: 0.0,
        color: Color.fromARGB(255, 0, 0, 0),
      ),
      Shadow(
        offset: Offset(1.0, -1.0),
        blurRadius: 0.0,
        color: Color.fromARGB(255, 0, 0, 0),
      ),
      Shadow(
        offset: Offset(1.0, 1.0),
        blurRadius: 0.0,
        color: Colors.black,
      ),
      Shadow(
        offset: Offset(-1.0, 1.0),
        blurRadius: 0.0,
        color: Color.fromARGB(255, 0, 0, 0),
      ),
    ];
    return GestureDetector(
      onTap: () => {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => CadeiraPage()))
      },
      child: Card(
        elevation: 4,
        color: Colors.grey[350],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        margin: EdgeInsets.symmetric(horizontal: 28, vertical: 12),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              opacity: 2,
              image: NetworkImage(
                discipline.imagePath,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
              padding: EdgeInsets.only(
                top: 24.0,
                bottom: 0.0,
                left: 30.0,
                right: 0.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(discipline.name,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        shadows: _txtShadow,
                      )),
                  Text(
                    discipline.professor,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        shadows: _txtShadow),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Card(
                    color: Colors.black38.withOpacity(0.45),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16.0),
                        topRight: Radius.circular(16.0),
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(16.0),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 20.0,
                        bottom: 24.0,
                        left: 24.0,
                        right: 28.0,
                      ),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              _buildColumn(
                                  discipline.absences, "Faltas", _txtShadow),
                              SizedBox(
                                height: 6,
                              ),
                              _buildColumn(
                                  discipline.hour, "Horários", _txtShadow)
                            ],
                          ),
                          SizedBox(width: 24),
                          Column(
                            children: [
                              _buildColumn(
                                  discipline.place, "Salas", _txtShadow),
                              SizedBox(
                                height: 6,
                              ),
                              _buildColumn(discipline.frequency, "Frequência",
                                  _txtShadow)
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }

  Widget _buildColumn(String topText, String bottomText, List<Shadow> shadow) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          topText,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            shadows: shadow,
          ),
        ),
        SizedBox(height: 4),
        Text(
          bottomText,
          style: TextStyle(color: Colors.white, fontSize: 18, shadows: shadow),
        ),
      ],
    );
  }
}
