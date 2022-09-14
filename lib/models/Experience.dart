import 'package:flutter/material.dart';

class Experience {
  final String name, review, userPic,duration;
  final int id;
  final Color color;

  Experience(
      {required this.name,
      required this.review,
      required this.userPic,
      required this.id,
      required this.color,
      required this.duration,
      
      });
}

// List of demo feedbacks
List<Experience> experiences = [
  Experience(
    id: 1,
    name: "ShellCode Solution FLutter intern",
    review:  'IT Services and IT Consulting',
    userPic: "assets/images/photo_2022-09-06_22-02-04.jpg",
    color: Colors.white,
    duration: 'July 2022-Aug 2022 · 1 mo',
  ),
  Experience(
    id: 2,
    name: "ICPC",
    review:  'Contestant at ACM | ICPC\nHonorable Mention at The 2021 Damascus Collegiate Programming Contest\n12th place at The 2020 Al-Baath and Hama university contest\n146th place at The 2021 ACPC Kickoff Online Individual Contest',
    userPic: "assets/images/p4755.jpg",
    color: Colors.white,
    duration: 'Jan 2021-Present .1 yr 9 mos',
  ),
  Experience(
    id: 3,
    name: "Flutter Developer-Self Employed",
    review: "1 year experience in Flutter Development.Familiarity with linking RESTful APIs.Firebase Auth, Dart, Bloc, Cubit, Getx, MVC, Providers, Local Storage (or Sqflite), JSON, REST API integrations.Know how to deal with different screen sizes.Experience with version control such as Git and GitHub.",
    userPic: "assets/images/FKNlhKZUcAEd7FY.png",
    color: Color(0xFFFFF3DD),
    duration: '2021-Present',
  ),
];

