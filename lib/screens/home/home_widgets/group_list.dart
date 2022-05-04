import 'package:flutter/material.dart';
import 'package:huro/models/study.dart';
import 'package:huro/screens/home/home_widgets/group_item.dart';

import 'group_detail.dart';

class GroupList extends StatelessWidget {
  final groupList = Group.generateGroups();
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
          top: 18,
        ),
        child: ListView.separated(
            padding: EdgeInsets.only(
              left: 11,
              right: 11,
              bottom: 11,
            ),
            itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      backgroundColor: Colors.transparent,
                      isScrollControlled: true,
                      context: context,
                      builder: (context) => GroupDetail(groupList[index]));
                },
                child: GroupItem(groupList[index])),
            //itemBuilder: (context, index) => GroupItem(groupList[index], showTime: true,),
            separatorBuilder: (_, index) => SizedBox(height: 12),
            itemCount: groupList.length)
    );
  }
}
