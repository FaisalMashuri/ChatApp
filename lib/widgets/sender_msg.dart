import 'package:flutter/material.dart';

class Sender extends StatelessWidget {
  final String time;
  final String text;
  final String imageUrl;

  Sender({required this.time, required this.text, required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 30
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20)
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(text, style: TextStyle(
                  color: Color(0xff505C6B),
                  fontSize: 16,
                  fontWeight: FontWeight.w400
                ),),
                SizedBox(height: 10,),
                Text(time,style: TextStyle(
                  color: Color(0xff505C6B),
                  fontSize: 14,
                  fontWeight: FontWeight.w300
                ) )
              ],
            ),
          ),
          Image.asset(imageUrl, width: 40,)
        ],
      ),
      
    );
  }
}