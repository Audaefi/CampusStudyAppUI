import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:huro/const/text_theme_data.dart';
import 'package:huro/models/post.dart';
import 'package:huro/widget/image_container.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';


class PostBody extends StatelessWidget {
  final NeighborhoodLife neighborhoodLife;

  const PostBody({Key? key, required this.neighborhoodLife}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: Theme.of(context).cardColor,
        /*border: Border(
          bottom: BorderSide(width: 0.5, color: Color(0xFFD4D5DD)),
        ),*/
      ),
      child: Column(
        children: [
          //_buildTop(),
          _buildWriter(),
          _buildImage(),
          _buildWriting(),
          Divider(
            height: 20,
            thickness: 1,
            color: Theme.of(context).hintColor,
            indent: 15,
            endIndent: 15,),
          _buildTail(neighborhoodLife.likeCount,neighborhoodLife.commentCount),
        ],
      ),
    );
  }

  Padding _buildTop() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 14,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.grey[300]
            ),
            child:
                Text(neighborhoodLife.category, style: TextStyle(fontSize: 12, color: Colors.black54),),
          ),
          IconButton(icon: Icon(LineAwesomeIcons.vertical_ellipsis, size: 18,), onPressed: () {}),
        ],
      ),
    );
  }

  Widget _buildWriter() {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ImageContainer(
                width: 30,
                height: 30,
                borderRadius: 15,
                imageUrl: neighborhoodLife.profileImgUri,
              ),
              SizedBox(width: 6),
              /*Column(
                children: [
                  Text.rich(
                    TextSpan(
                        text: ' ${neighborhoodLife.userName}',
                        style: textTheme().headline1),
                    ),
                  Text(
                    neighborhoodLife.date,
                    style: textTheme().bodyText2,
                  ),
                ],
              ),*/
              RichText(
                text: TextSpan(
                    children: [
                      TextSpan(
                        text: ' ${neighborhoodLife.userName} \n',
                        style: textTheme().headline1),

                      TextSpan(
                        text: ' ${neighborhoodLife.date} 전',
                        style: textTheme().caption),
                        ],
                    ),
                ),
             ],
          ),
          Row(
            children: [
              IconButton(icon: Icon(LineAwesomeIcons.horizontal_ellipsis, size: 18,), onPressed: () {}),
              ]
            ),
          ],
        ),
      );
  }

  Padding _buildWriting() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          neighborhoodLife.content,
          style: textTheme().bodyText1,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.start,
        ),
      ),
    );
  }

  Visibility _buildImage() {
    return Visibility(
      visible: neighborhoodLife.contentImgUri != '',
      child: Padding(
        padding: EdgeInsets.only(top:15,left: 15, right: 15),
        child: Image.network(
          neighborhoodLife.contentImgUri,
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }


  Padding _buildTail(int likeCount, int commentCount) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: 9),
          Icon(
            LineAwesomeIcons.heart,
            color: Colors.grey,
            size: 20,
          ),
          SizedBox(width: 8),
          Text(
            "$likeCount",
            style: TextStyle(fontSize: 13),
          ),
          SizedBox(width: 35),
          Icon(
            LineAwesomeIcons.alternate_comment,
            color: Colors.grey,
            size: 20,
          ),
          SizedBox(width: 8),
          Text(
            "$commentCount",
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(width: 9),
        ],
      ),
    );
  }
}


