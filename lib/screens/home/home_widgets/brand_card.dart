import 'package:flutter/material.dart';
import 'package:huro/const/colors.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

// SERO 브랜드 카드
class BrandCard extends StatelessWidget {
  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      height: 145,
      width: double.maxFinite,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: AssetImage('assets/images/sero_new.png'),
              fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'S E R O',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w800
            ),
          ),
          SizedBox(height: 6),
          Text(
            '당신의 캠퍼스에서 다양한 스터디를 찾아보세요!',
            style: TextStyle(
              fontSize: 14,
              height: 1.8,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 35,
            decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(30)
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top:0),
                child: TextField(
                  controller: _searchController,
                  cursorColor: black,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "검색",
                      hintStyle: TextStyle(
                          color: black.withOpacity(0.4), fontSize: 13
                      ),
                      prefixIcon: Icon(LineAwesomeIcons.search,color: black.withOpacity(0.8), size: 15,)
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
