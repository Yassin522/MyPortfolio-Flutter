import 'package:flutter/material.dart';

class DSProject {
  final String name, review, userPic;
  final int id;
  final Color color;

  DSProject(
      {required this.name,
      required this.review,
      required this.userPic,
      required this.id,
      required this.color});
}

List<DSProject> dsproject = [
  DSProject(
    id: 1,
    name: "Interactive Drawing Education System for Children",
    review:
        "I have developed an innovative interactive web application designed with my team to facilitate drawing education for children. This system utilizes machine learning algorithms to predict and assist children in their drawing endeavors. Its primary objective is to provide an engaging and interactive learning experience that enables children to develop their artistic skills while receiving real-time feedback and support.",
    userPic: "assets/images/drawing.jpg",
    color: Color(0xFFFFF3DD),
  ),
  DSProject(
    id: 2,
    name: "Web page using Stramlit",
    review:
        "I just tried to build a web page using the powerful Python library, Streamlit. This tool provides intuitive and interactive insights into complex data sets. The end result is a high-quality, web-based application that is accessible to users of all technical levels.",
    userPic: "assets/images/download.jpeg",
    color: Color(0xFFFFF3DD),
  ),
  DSProject(
    id: 3,
    name: "Heartbeat Categorization",
    review:
        "This project is aimed at developing a machine learning model that can accurately classify heartbeats as either normal or abnormal. The model is trained on a dataset of ECG (electrocardiogram) signals, which were collected from patients and labeled by medical professionals.",
    userPic: "assets/images/heart.jpeg",
    color: Color(0xFFFFF3DD),
  ),
  DSProject(
    id: 4,
    name: "Exploring the Evolution of Linux",
    review:
        "Conducted an exploratory data analysis using Python and Pandas to understand the evolution of the Linux operating system.",
    userPic: "assets/images/linux.jpg",
    color: Color(0xFFFFF3DD),
  ),
  DSProject(
    id: 5,
    name: "Give Life: Predict Blood Donations",
    review:
        "Built a machine learning model using Python and Scikit-learn to predict blood donation behavior of donors",
    userPic: "assets/images/blood.jpeg",
    color: Color(0xFFFFF3DD),
  ),
];
