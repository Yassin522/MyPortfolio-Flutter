import 'package:flutter/material.dart';

class RecentWorkk {
  final String name, review, userPic;
  final int id;
  final Color color;

  RecentWorkk(
      {required this.name,
      required this.review,
      required this.userPic,
      required this.id,
      required this.color});
}

List<RecentWorkk> recentworkk = [
  RecentWorkk(
    id: 1,
    name: "SchoolMate",
    review:
        "The project is an Flutter application for the student, teacher and parents and also a web application for the administration to control all school data",
    userPic: "assets/images/teacher mockup_014955.jpg",
    color: Color(0xFFFFF3DD),
  ),
  RecentWorkk(
    id: 2,
    name: "Wallme",
    review:
        "Flutter Full App for Android With Admin Panel, Wallme is a complete Wallpaper app with an admin panel that is developed on the Flutter framework.",
    userPic: "assets/images/Screenshot 2022-08-16 184641.png",
    color: Color(0xFFFFF3DD),
  ),
  RecentWorkk(
    id: 3,
    name: "Wallme-admin-panel",
    review:
        "Flutter Full App for Android With Admin Panel, Wallme is a complete Wallpaper app with an admin panel that is developed on the Flutter framework.",
    userPic: "assets/images/Screenshot 2022-08-16 184641.png",
    color: Color(0xFFFFF3DD),
  ),
  RecentWorkk(
    id: 4,
    name: "Ai Radio",
    review:
        "It is a radio player application that supports Syrian radio stations",
    userPic: "assets/images/Free Black Keyboard With Smartphone Mockup.jpg",
    color: Color(0xFFFFF3DD),
  ),
  RecentWorkk(
    id: 5,
    name: "My portfolio",
    review: "Responsive and Animated Portfolio Website & App it works perfectly on mobile and web",
    userPic: "assets/images/Annotation 2022-02-05 163210.png",
    color: Color(0xFFFFF3DD),
  ),
  RecentWorkk(
    id: 6,
    name: "eBook app",
    review: "Main Features:\noffline reading, RTL , Search, Multi language.",
    userPic: "assets/images/Screenshot 2022-06-14 192516.png",
    color: Color(0xFFFFF3DD),
  ),
  RecentWorkk(
    id: 7,
    name: "Movie app",
    review: "Flutter Movie Android App using Bloc",
    userPic: "assets/images/Screenshot 2022-06-14 154858.png",
    color: Color(0xFFFFF3DD),
  ),
  RecentWorkk(
    id: 8,
    name: "Shop App",
    review:
        "E-commerce mobile application ui where you can trade products expiring soon\nYou can create your own account and sell and buy products.",
    userPic: "assets/images/Annotation 2022-02-05 162933.png",
    color: Color(0xFFFFF3DD),
  ),
];
