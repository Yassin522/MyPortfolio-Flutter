import 'package:flutter/material.dart';
import 'package:my_profile/Components/section_title.dart';
import 'package:my_profile/constants.dart';
import 'package:my_profile/models/Recentwork2.dart';
import 'package:my_profile/sections/recent_work2/components/recent_work2_card.dart';



class RecentWorkk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 2.5),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          SectionTitle(
            title: "Recent Work",
            subTitle: "Client’s testimonials that inspired me a lot",
            color: Color(0xFF00B1FF),
          ),
          SizedBox(height: kDefaultPadding),
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
                recentworkk.length,
                (index) => RecentWorkCardd(index: index, press: () {}),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
