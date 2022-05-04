import 'package:flutter/material.dart';
import 'package:huro/models/user.dart';

class Message {
  User user;
  String title;
  String lastMessage;
  String lastTime;
  bool isContinue;
  Message(this.user, this.title, this.lastMessage, this.lastTime,
      {this.isContinue = false});

  // fake data, fetech from your DB instead
  static List<Message> generateHomePageMessages() {
    return [
      Message(users[0], '안녕하세요','Hey there! What\'s up? Is everything going well?',
          '18:32'),
      Message(
          users[1], '반갑습니다','Can I call you back? I\'m in the hospital now.', '14:05'),
      Message(
          users[2], '반갑습니다','Yeah, Do you have any good songs to suggest?', '14:00'),
      Message(users[3], '반갑습니다','Hi! I went shopping today and I missed your message!',
          '13:35'),
      Message(users[4], '반갑습니다','I passed you on the ride into work, have you see me?',
          '12:11'),
      Message(users[5],'반갑습니다', 'Hey there! What\'s up? Is everything going well?',
          '12:00'),
    ];
  }

  // message from the first user
  static List<Message> generateMessagesFromUser() {
    return [
      Message(
        users[0],
        '반갑습니다',
        'Hey there! What\'s up? Is everything going well?',
        '18:35',
      ),
      Message(
          me,
          '반갑습니다',
          'Nothing. Just chilling and watching YouTube. What about you?',
          '18:36'),
      Message(
          users[0],
          '반갑습니다',
          'Same here! Been watching YouTube for the past 5 hours despite of having so much to do! 😅',
          '18:39',
          isContinue: true),
      Message(users[0],
          '반갑습니다','It\'s hard to be productive, man 🙄', '18:39'),
      Message(me, '반갑습니다','Yeah I know, I\'m in the same position 😂', '18:42'),
      Message(users[0], '반갑습니다','lol', '18:55'),
    ];
  }
}

var users = User.generateUsers();
var me = User(0, 'Ruize', 'Nie', 'assets/images/user0.png', Color(0xFFFFFF));
