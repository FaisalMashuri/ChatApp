import 'package:chatty/theme.dart';
import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  // const ChatTile({Key? key}) : super(key: key);
  final String imageUrl;
  final String name;
  final String text;
  final String time;
  final bool unread;

  ChatTile({required this.imageUrl, required this.name, required this.text, required this.time,required this.unread});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:16.0),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            imageUrl,
            width: 55,
            height: 55,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(name, style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),),
                Text(
                  text,
                  style: unread ? subtitleTextStyle.copyWith(
                    color: blackColor,
                    fontWeight: FontWeight.w400
                  ) : subtitleTextStyle,
                )
              ],
            ),
          ),
          Spacer(),
          Text(
            time,
          )
        ],
      ),
    );
  }
}
