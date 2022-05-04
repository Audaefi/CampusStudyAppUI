import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class GroupAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "",
            style: TextStyle(
                color: Theme.of(context).textSelectionColor,
                fontSize: 14,
                fontWeight: FontWeight.w600),
          ),
            ],
          )
    );
  }
}
