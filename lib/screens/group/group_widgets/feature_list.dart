import 'package:flutter/material.dart';
import 'package:huro/models/message.dart';

class FeatureList extends StatelessWidget {
  final messagesList = Message.generateHomePageMessages();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: _buildMessages(),
      ),
    );
  }
  Widget _buildMessages() {
    return ListView.separated(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) => _buildMessage(context, index),
        separatorBuilder: (_, index) => SizedBox(height: 7),
        itemCount: messagesList.length);
  }

  Widget _buildMessage(BuildContext context, int index) {
    return Container(
      width: 290,
      //height: 137,
      padding: EdgeInsets.all(7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).cardColor,
      ),
    /*return GestureDetector(
      onTap: () {
        *//*Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailPage(messagesList[index])));
      *//*},*/
      child: Row(
        children: [
          //SizedBox(width: 5),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('자유', style: TextStyle(fontSize: 12, color: Colors.purple),),
                    Text(messagesList[index].lastTime, style: TextStyle(fontSize: 12, color: Colors.grey),)
                  ],
                ),
                SizedBox(height: 3),
                Text(
                  messagesList[index].title,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 3),
                /*Text(
                  messagesList[index].lastMessage,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 12),
                )*/
                Text(
                  '${messagesList[index].user.firstName}',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
