import 'package:chatty/theme.dart';
import 'package:flutter/material.dart';
import 'package:chatty/widgets/header_msg.dart';
import 'package:chatty/widgets/body_msg.dart';

class Message extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8FAFC),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            // Text("Hai")
            Header(),
            SizedBox(
              height: 10,
            ),
            Body(),
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width - (2 * 30),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(75),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Type message ...',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                      color: Color(0xff999999),
                    ),
                  ),
                  Icon(Icons.send)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
