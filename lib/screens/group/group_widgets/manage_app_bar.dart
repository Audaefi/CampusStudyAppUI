import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ManageAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 18,
        right: 18,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  shape: BoxShape.circle),
              child: Icon(
                LineAwesomeIcons.angle_left,
                color: Theme.of(context).textSelectionColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
