import 'package:flutter/material.dart';

class Reciever extends StatelessWidget {
  final String time;
  final String text;
  final String imageUrl;

  Reciever({required this.time, required this.text, required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        child: Row(
          children: <Widget>[
            Image.asset(
              imageUrl,
              width: 40,
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
              decoration: BoxDecoration(
                  color: Color(0xffEBEFF3),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    text,
                    style: TextStyle(
                      color: Color(0xff505C6B),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    time,
                    style: TextStyle(
                      color: Color(0xff505C6B),
                      fontSize: 14,
                      fontWeight: FontWeight.w300
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
