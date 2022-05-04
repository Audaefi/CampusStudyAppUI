import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final String text;
  IconText(this.icon, this.text);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.yellow),
        SizedBox(width: 10),
        Text(
          text,
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}

class IconText1 extends StatelessWidget {
  final IconData icon;
  final String meet_type;
  IconText1(this.icon, this.meet_type);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.lightBlue, size: 17),
        SizedBox(width: 10),
        Text(
          meet_type,
          style: TextStyle(
            fontSize: 13,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}

class IconText2 extends StatelessWidget {
  final IconData icon;
  final String current_head;
  final String max_head;
  IconText2(this.icon, this.current_head, this.max_head);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.lightBlue, size: 17),
        SizedBox(width: 10),
        Text(current_head,
          style: TextStyle(fontSize: 13, color: Colors.grey,),
        ),
        Text("/",
          style: TextStyle(fontSize: 13, color: Colors.grey,),
        ),
        Text(max_head,
          style: TextStyle(fontSize: 13, color: Colors.grey,),
        ),
      ],
    );
  }
}
