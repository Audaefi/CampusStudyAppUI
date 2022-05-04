import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class PostAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Container(
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
        ),
      ],
    );
  }
}