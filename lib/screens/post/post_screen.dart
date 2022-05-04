import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:huro/screens/post/post_widgets/post_app_bar.dart';
import 'package:huro/screens/post/post_widgets/post_body.dart';
import 'package:huro/screens/post/post_widgets/post_header.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import '../../models/post.dart';


class FeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool selected = true;
    return Scaffold(
      //backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text('포스트', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold,color: Theme
            .of(context)
            .textSelectionColor,),),
        backgroundColor: Theme
            .of(context)
            .scaffoldBackgroundColor,
        actions: [
          IconButton(icon: Icon(LineAwesomeIcons.search, color: Theme
              .of(context)
              .textSelectionColor,), onPressed: () {}),
          IconButton(
              icon: Icon(
                LineAwesomeIcons.edit, color: Theme
                  .of(context)
                  .textSelectionColor,),
              onPressed: () {}),
          //IconButton(icon: Icon(LineAwesomeIcons.bell, color: Theme.of(context).textSelectionColor ), onPressed: () {}),
        ],
        //bottom: appBarBottomLine(),
      ),
      body: ListView(
        children: [
          //PostHeader(),
          ...List.generate(
            neighborhoodLifeList.length,
                (index) =>
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: PostBody(
                    neighborhoodLife: neighborhoodLifeList[index],
                  ),
                ),
          )
        ],
      ),
    );
  }
}

/*import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:huro/screens/post/post_widgets/feed.dart';

class FeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGridView.countBuilder(
        crossAxisCount: 6,
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) => Feed(),
        staggeredTileBuilder: (int index) =>
          new StaggeredTile.count(3, index.isEven ? 4 : 5),
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 6.0,
      )
      //GridView.count(crossAxisCount: 2,
      // childAspectRatio: 240/290,
      // crossAxisSpacing: 8,
      // mainAxisSpacing: 8,
      // children: List.generate(100, (index){
      //   return FeedProducts();
      // })),
    );
  }
}*/
