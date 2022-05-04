import 'package:flutter/material.dart';
import 'package:huro/models/study.dart';
import 'package:huro/widget/icon_text.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class GroupDetail extends StatelessWidget {
  final Group group;
  GroupDetail(this.group);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          )),
      height: 470,
      //child:SingleChildScrollView(
      //
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 5,
              width: 60,
              color: Colors.grey.withOpacity(0.3),
            ),
            SizedBox(height: 30),
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        group.grouptitle,
                        style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        group.isMark
                            ? Icons.bookmark
                            : Icons.bookmark_outline_rounded,
                        color: group.isMark
                            ? Colors.brown
                            : Colors.grey,
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.more_horiz_outlined,
                        color: Colors.grey.shade600),
                    ],
                  )
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconText1(LineAwesomeIcons.map_marker, group.location),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconText2(LineAwesomeIcons.user_1, group.headcount_current, group.headcount_max),
                ],
              ),
              SizedBox(height: 20),
              Text(
              '그룹 소개',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
              SizedBox(height: 5),
              Text(
                group.intro,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              SizedBox(height: 20),
              Text(
                '모집 내용',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              ...group.req
                  .map((e) => Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            height: 5,
                            width: 5,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Theme.of(context).textSelectionColor),
                          ),
                          SizedBox(width: 10),
                          ConstrainedBox(
                            constraints: BoxConstraints(
                              maxWidth: 300,
                            ),
                            child: Text(
                              e,
                              style: TextStyle(
                                wordSpacing: 2.5,
                                height: 1.5,
                              ),
                            ),
                          ),
                        ],
                      )))
                  .toList(),
              ]
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 25),
              height: 40,
              width: double.maxFinite,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: Theme.of(context).buttonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                onPressed: () {},
                child: Text('가입 하기', style: TextStyle(fontSize: 16)),
              ),
            )
          ],
            ),
        ),
    );
  }
}
