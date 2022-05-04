import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:huro/models/study.dart';
import 'package:huro/widget/icon_text.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
//import 'icon_text.dart';

class GroupItem extends StatelessWidget {
  final Group group;
  final bool showTime;
  GroupItem(this.group, {this.showTime = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      //height: 137,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).cardColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    group.grouptitle,
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Icon(
                group.isMark ? Icons.bookmark : Icons.bookmark_outline_outlined,
                color:
                group.isMark ? Colors.brown : Colors.grey.shade800,
              )
            ],
          ),
          SizedBox(height: 10),
          Text(
            group.intro,
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.normal),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconText1(LineAwesomeIcons.map_marker, group.location),
              SizedBox(width: 20),
              IconText2(LineAwesomeIcons.user_1, group.headcount_current, group.headcount_max),
            ],
          )
        ],
      ),
    );
  }
}
