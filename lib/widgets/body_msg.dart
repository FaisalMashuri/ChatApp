import 'package:flutter/material.dart';
import 'package:chatty/widgets/reciever_msg.dart';
import 'package:chatty/widgets/sender_msg.dart';
class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            Reciever(time: "01.00 Am", text: "text", imageUrl: "assets/images/pic_1.png"),
            Reciever(time: "01.00 Am", text: "dsfasfasfasfasfsafa", imageUrl: "assets/images/pic_1.png"),
            Sender(time: "04.00Am", text: "texdasdasdasdadsadsasadt", imageUrl: "assets/images/profile_pic.png")
          ],
        ),
      ),      
    );
  }
}