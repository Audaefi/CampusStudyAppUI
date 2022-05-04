import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:huro/models/joined_group.dart';
import 'package:huro/screens/home/home_widgets/group_item.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class GroupItem extends StatelessWidget {
  final Joined_group job;
  final bool showTime;
  GroupItem(this.job, {this.showTime = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
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
                    job.grouptitle,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
              Icon(
                job.isfavor ? LineAwesomeIcons.star_1 : LineAwesomeIcons.star,
                color:
                job.isfavor ? Colors.orange : Colors.grey.shade800,
              ),
            ],
          ),
          SizedBox(height: 15),
          Text(
            job.title,
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconText1(LineAwesomeIcons.map_marker, job.location),
              SizedBox(width: 20),
              IconText2(LineAwesomeIcons.user_1, job.headcount_current, job.headcount_max),
            ],
          )
        ],
      ),
    );
  }
}

class IconText1 extends StatelessWidget {
  final IconData icon;
  final String meet_type;
  IconText1(this.icon, this.meet_type);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.lightBlue, size: 17),
        SizedBox(width: 10),
        Text(
          meet_type,
          style: TextStyle(
            fontSize: 11,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}

class IconText2 extends StatelessWidget {
  final IconData icon;
  final String current_head;
  final String max_head;
  IconText2(this.icon, this.current_head, this.max_head);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.lightBlue, size: 17),
        SizedBox(width: 10),
        Text(current_head,
          style: TextStyle(fontSize: 12, color: Colors.grey,),
        ),
        Text("/",
          style: TextStyle(fontSize: 12, color: Colors.grey,),
        ),
        Text(max_head,
          style: TextStyle(fontSize: 12, color: Colors.grey,),
        ),
      ],
    );
  }
}