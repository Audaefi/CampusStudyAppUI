import 'package:flutter/material.dart';
import 'package:huro/models/data_json.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class TagList extends StatefulWidget {
  @override
  _TagListState createState() => _TagListState();
}

class _TagListState extends State<TagList> {
  //final tagsList = <String>['수업', '자격증', '어학','취업', '국가시험','기타'];
  final category = categoryList.generatecategoryList();
  var selected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      //width: 60,
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                setState(() {
                  selected = index;
                });
              },
              child: Container(
                height: 80,
                width: 80,
                padding: EdgeInsets.symmetric(
                  vertical: 7,
                  horizontal: 10,
                ),
                decoration: BoxDecoration(
                    color: selected == index
                        ? Theme.of(context).primaryColor.withOpacity(0.2)
                        : Theme.of(context).backgroundColor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: selected == index
                          ? Theme.of(context).primaryColor
                          : Theme.of(context).primaryColor.withOpacity(0.2),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      category[index].title,
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '${category[index].groupcount} 그룹',
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.grey,),
                    ),
                  ],
                ),//Text(tagsList[index], style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),),
              )),
          separatorBuilder: (_, index) => SizedBox(
            width: 12,
          ),
          itemCount: category.length),
    );
  }

}



