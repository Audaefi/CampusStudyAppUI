import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'group_widgets/group_app_bar.dart';
import 'group_widgets/group_list.dart';


class GroupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          /*Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  color: Colors.grey.withOpacity(0.1),
                ),
              ),
            ],
          ),*/
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBar(
                title: Text('나의 스터디', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Theme
                    .of(context)
                    .textSelectionColor),),
                backgroundColor: Theme
                    .of(context)
                    .scaffoldBackgroundColor,
                actions: [
                  IconButton(
                      icon: Icon(
                        LineAwesomeIcons.vertical_ellipsis, color: Theme
                          .of(context)
                          .textSelectionColor,),
                      onPressed: () {}),
                  //IconButton(icon: Icon(LineAwesomeIcons.bell, color: Theme.of(context).textSelectionColor ), onPressed: () {}),
                ],
                //bottom: appBarBottomLine(),
              ),
              /*Container(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Row(
                  children: [
                    Text(
                      "가입된 스터디",
                      style: TextStyle(
                          color: Theme.of(context).textSelectionColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          decoration: TextDecoration.none
                      ),
                    ),
                  ],
                ),
              ),*/
              SizedBox(height: 10,),
              Expanded(child: SearchList()),
            ],
          )
        ],
      ),
    );
  }
}
