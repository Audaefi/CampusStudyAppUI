import 'package:flutter/material.dart';
import 'package:huro/models/icon_menu.dart';
import 'package:huro/widget/card_icon_menu.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ProfileList extends StatelessWidget {
  const ProfileList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Divider(height: 20, thickness: 1, color: Colors.blueGrey, indent: 20, endIndent: 20,),
                //Divider(thickness: 1, color: Colors.blueGrey,),
              const SizedBox(height: 8.0),
              CardIconMenu(iconMenuList: iconMenu1),
              const SizedBox(height: 8.0),
              CardIconMenu(iconMenuList: iconMenu2),
              const SizedBox(height: 8.0),
              CardIconMenu(iconMenuList: iconMenu3)
                /*userListTile('소속', '', 8, context),
                userListTile('관심지역', '', 8, context),
                userListTile('관심분야', '', 8, context),
                userListTile('소개', '', 8, context),*/
                //userListTile('title','sub',0,context),
            ],
        ),
    );
  }
}

Widget userTitle(String title) {
  return Padding(
      padding: const EdgeInsets.all(9.0),
      child: Text(
          title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18))
  );
}
