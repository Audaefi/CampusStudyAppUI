import 'package:flutter/material.dart';

class categoryList {
  String title;
  int groupcount;
  categoryList(this.title, this.groupcount);

  // fake data, fetech from your DB instead
  static List<categoryList> generatecategoryList() {
    return [
      categoryList('수업', 26),
      categoryList('자격증', 21),
      categoryList('어학', 6),
      categoryList('취업', 9),
      categoryList('국가시험', 3),
      categoryList('기타', 13),
    ];
  }
}