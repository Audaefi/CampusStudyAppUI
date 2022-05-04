import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ManageFeature extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.only(left: 20, right: 20),
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(icon: Icon(LineAwesomeIcons.poll_h, size: 30, color: Theme
              .of(context)
              .textSelectionColor,), onPressed: () {}),
          IconButton(icon: Icon(LineAwesomeIcons.calendar, size: 30, color: Theme
              .of(context)
              .textSelectionColor,), onPressed: () {}),
          IconButton(icon: Icon(LineAwesomeIcons.comments, size: 30, color: Theme
              .of(context)
              .textSelectionColor,), onPressed: () {}),
          IconButton(icon: Icon(LineAwesomeIcons.user, size: 30, color: Theme
              .of(context)
              .textSelectionColor,), onPressed: () {}),
          IconButton(icon: Icon(LineAwesomeIcons.cog, size: 30, color: Theme
              .of(context)
              .textSelectionColor,), onPressed: () {}),
        ],
      ),
    );
  }
}
