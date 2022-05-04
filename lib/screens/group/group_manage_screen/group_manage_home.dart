import 'package:flutter/material.dart';
import 'package:huro/models/joined_group.dart';
import 'package:huro/screens/group/group_widgets/feature_list.dart';
import 'package:huro/screens/group/group_widgets/manage_app_bar.dart';
import 'package:huro/screens/group/group_widgets/manage_features.dart';

class GroupHome extends StatelessWidget {
  final Joined_group joined_group;
  GroupHome(this.joined_group);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        children: [
            SizedBox(height: 10,),
            ManageAppBar(),
            SizedBox(height: 10),
            Container(
              //padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Text(
                      joined_group.grouptitle,
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                  ),
              ],
            ),
          ),
          ManageFeature(),
          //Text('게시판'),
          FeatureList()
        ],
      ),
    );
  }
}
