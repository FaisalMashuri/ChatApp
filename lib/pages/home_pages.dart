import 'package:chatty/widgets/header_msg.dart';
import 'package:flutter/material.dart';
import 'package:chatty/theme.dart';
import 'package:chatty/widgets/chat_tile.dart';
import 'package:chatty/pages/message.dart';

class HomePages extends StatelessWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder:(context) => Message()));
        },
        child: Icon(Icons.add, size: 35,),
        backgroundColor: Colors.green,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        backgroundColor: blueColor,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 40,
                  ),
                  Image.asset(
                    'assets/images/profile_pic.png',
                    height: 100,
                    width: 100,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Sabrina Carpenter',
                    style: TextStyle(
                      fontSize: 20,
                      color: whiteColor,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Travel Freelancer',
                    style: TextStyle(color: lightBlue, fontSize: 16),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(40))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Friends",
                          style: tittleTextStyle,
                        ),
                        ChatTile(
                          imageUrl: 'assets/images/pic_1.png',
                          name: 'Joshua',
                          text: "Hai",
                          time: "2.00 AM",
                          unread: false,
                        ),
                        ChatTile(
                          imageUrl: 'assets/images/pic_1.png',
                          name: 'Gabriela',
                          text: "Hai",
                          time: "3.00 AM",
                          unread: true,
                        ),
                        SizedBox(height: 16,),
                        Text(
                          "Group",
                          style: tittleTextStyle,
                        ),
                        ChatTile(
                          imageUrl: 'assets/images/a_icon.png',
                          name: 'Android Group',
                          text: "Hai",
                          time: "3.00 AM",
                          unread: true,
                        ),
                        ChatTile(
                          imageUrl: 'assets/images/b_icon.png',
                          name: 'Blockchain Group',
                          text: "Hai",
                          time: "3.00 AM",
                          unread: false,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder:(context) => Message()));
                          },
                          child: ChatTile(
                            imageUrl: 'assets/images/js_icon.png',
                            name: 'JS Group',
                            text: "Hai",
                            time: "3.00 AM",
                            unread: false,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
