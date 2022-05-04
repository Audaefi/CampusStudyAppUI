import 'package:flutter/material.dart';
import 'package:huro/models/joined_group.dart';
import 'package:huro/screens/group/group_manage_screen/group_manage_home.dart';
import 'group_item.dart';

class SearchList extends StatelessWidget {
  final joinedList = Joined_group.generateJoined();
  @override
  Widget build(BuildContext context) {
    return Container(
        //margin: EdgeInsets.only(top: 25,),
        child: ListView.separated(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 20,
            ),
            itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => GroupHome(joinedList[index]))
                  );
                },
                child: GroupItem(joinedList[index])
            ),
            separatorBuilder: (_, index) => SizedBox(height: 20),
            itemCount: joinedList.length));
  }
}
