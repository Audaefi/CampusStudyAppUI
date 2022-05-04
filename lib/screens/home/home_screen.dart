import 'dart:ui';
import 'package:backdrop/app_bar.dart';
import 'package:backdrop/button.dart';
import 'package:backdrop/scaffold.dart';
import 'package:backdrop/sub_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:huro/const/colors.dart';
import 'package:huro/screens/home/sub_screens/user.dart';
import 'package:huro/screens/home/home_widgets/group_list.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'home_widgets/tag_list.dart';
import 'home_widgets/brand_card.dart';
import 'sub_screens/profile_screen/profile_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
          child: BackdropScaffold(
            headerHeight: MediaQuery.of(context).size.height * 0.25,
            appBar: BackdropAppBar(
              title: Text(
                "",
                style: TextStyle(
                    color: Theme.of(context).textSelectionColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              leading: BackdropToggleButton(
                icon: AnimatedIcons.arrow_menu,
                color: Theme.of(context).textSelectionColor,
              ),
              flexibleSpace: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor)
              ),
              actions: <Widget>[
                /*IconButton(icon: Icon(LineAwesomeIcons.bell, size: 25, color: Theme
                    .of(context)
                    .textSelectionColor,), onPressed: () {}),*/
                IconButton(
                  iconSize: 35,
                  padding: const EdgeInsets.all(10),
                  icon: CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: NetworkImage(
                          'https://t3.ftcdn.net/jpg/01/83/55/76/240_F_183557656_DRcvOesmfDl5BIyhPKrcWANFKy2964i9.jpg'),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => UserScreen()));
                  },
                )
              ],
            ),
            backLayer: Center(
              child: Text("레이어 1"),
            ),
            frontLayer: Container(
              color: Theme.of(context).scaffoldBackgroundColor,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  BrandCard(),
                  Container(
                    padding: const EdgeInsets.only(top: 8, bottom:10, left: 20, right: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("카테고리", style: TextStyle(
                      color: Theme.of(context).textSelectionColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      decoration: TextDecoration.none
                       ),),],
                    ),
                  ),
                  TagList(),
                  Container(
                    padding: const EdgeInsets.only(top:20,left: 20, right: 20),
                    child: Row(
                      children: [
                        Text(
                          "최근 개설된 스터디",
                          style: TextStyle(
                              color: Theme.of(context).textSelectionColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              decoration: TextDecoration.none
                          ),
                        ),
                        Expanded(child: Container()),
                        Text(
                          "모두 보기",
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                              decoration: TextDecoration.none
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: GroupList()),
                ],
              ),
            ),
          )),
    );
  }

  Widget customTextField(Size size) {
    return Material(
      elevation: 5,
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: size.height / 16,
        width: size.width / 1.14,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "새로운 스터디 찾기",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            Icon(
              Icons.search,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}

