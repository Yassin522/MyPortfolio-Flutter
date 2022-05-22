import 'package:flutter/material.dart';
import 'package:my_profile/Components/section_title.dart';
import 'package:my_profile/constants.dart';
import 'package:my_profile/models/Service.dart';


import 'components/service_card.dart';

class ServiceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          SectionTitle(
            color: Color(0xFFFF0000),
            title: "Service Offerings",
            subTitle: "My Strong Arenas",
          ),

          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
               children: [
                  Text(
                "Scroll",
                style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(fontWeight: FontWeight.bold, color: Colors.yellow)
              ),

              Icon(
               Icons.arrow_forward,  
               color: Colors.yellow,
              ),


               ],
            ),
          ),
          
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                  services.length, (index) => Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ServiceCard(index: index),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
