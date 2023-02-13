import 'package:flutter/material.dart';

class Experience {
  final String name, review, userPic, duration;
  final int id;
  final Color color;

  Experience({
    required this.name,
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
    name: "Data Science Intern at SHAI For AI",
    review:
        'The Data Science Trainee will be responsible for: Assisting with data collection, cleaning and preparation, Building and testing predictive models, Developing data visualizations to communicate insights, Staying up-to-date with the latest advancements in data science and machine learning',
    userPic: "assets/images/1652345898144.jpeg",
    color: Colors.white,
    duration: 'Feb 2023-Present',
  ),
  Experience(
    id: 2,
    name: "Data Science Intern at The Sparks Foundation",
    review:
        ' This is an exciting opportunity for someone who is passionate about using data to drive change and wants to gain hands-on experience in the field of data science. This is an excellent opportunity for individuals who are eager to learn and grow as a data scientist.',
    userPic: "assets/images/1519895156650.jpeg",
    color: Colors.white,
    duration: 'Oct 2022-Nov 2022',
  ),
  Experience(
    id: 3,
    name: "Trainee at DataCamp",
    review:
        'Through my studies on DataCamp, I have gained a strong foundation in Python programming, including an understanding of fundamental concepts such as data types, control structures, and object-oriented programming. I have also learned how to use popular Python packages such as NumPy, pandas, and matplotlib for data manipulation and visualization.',
    userPic: "assets/images/1603188329234.jpeg",
    color: Colors.white,
    duration: 'Oct 2022-Present',
  ),
  Experience(
    id: 4,
    name: "Research Intern at In1Minute",
    review:
        'Overall, I am grateful for the opportunity to participate in the ResearchMate-2nd Season workshop and am honored to have received this Certificate of Recognition. I am confident that the skills and knowledge that I have gained through this workshop will be valuable assets in my professional development and future career endeavors.',
    userPic: "assets/images/1535467604961.jpeg",
    color: Colors.white,
    duration: 'Oct 2022-Nov 2022 · 2 mo',
  ),
  Experience(
    id: 5,
    name: "ShellCode Solution FLutter intern",
    review:
        'IT Services and IT Consulting\nWork was done for a month on an application to manage a whole hotel and flutter were used to implement this project.',
    userPic: "assets/images/photo_2022-09-06_22-02-04.jpg",
    color: Colors.white,
    duration: 'July 2022-Aug 2022 · 1 mo',
  ),
  Experience(
    id: 6,
    name: "ICPC",
    review:
        'Contestant at ACM | ICPC\nHonorable Mention at The 2021 Damascus Collegiate Programming Contest\n12th place at The 2020 Al-Baath and Hama university contest\n146th place at The 2021 ACPC Kickoff Online Individual Contest',
    userPic: "assets/images/p4755.jpg",
    color: Colors.white,
    duration: 'Jan 2021-Present .1 yr 9 mos',
  ),
  Experience(
    id: 7,
    name: "Flutter Developer-Self Employed",
    review:
        "1 year experience in Flutter Development.Familiarity with linking RESTful APIs.Firebase Auth, Dart, Bloc, Cubit, Getx, MVC, Providers, Local Storage (or Sqflite), JSON, REST API integrations.Know how to deal with different screen sizes.Experience with version control such as Git and GitHub.",
    userPic: "assets/images/FKNlhKZUcAEd7FY.png",
    color: Color(0xFFFFF3DD),
    duration: '2021-Present',
  ),
  Experience(
    id: 87,
    name: "Tutor at RBCs Team",
    review:
        'Red Blood Cells Team (RBCs) is an educational voluntary team of academic youth, working towards the growth and development of the Syrian society and University students, providing them with the best educational academic materials, online and offline.',
    userPic: "assets/images/rbcs.png",
    color: Colors.white,
    duration: 'Feb 2021-Present',
  ),
];
