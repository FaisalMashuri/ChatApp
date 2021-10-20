import 'package:chatty/theme.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(bottom:Radius.circular(30)),
        color: whiteColor
      ),
      padding: EdgeInsets.all(30),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back),
          ),
          SizedBox(width: 20,),
          Image.asset(
            'assets/images/js_icon.png',
            width: 55,
            height: 55,
          ),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Js Group",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
              Text('120k Member',style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16, color: greyColor))
            ],
          ),
          Spacer(),
          InkWell(
            child: Image.asset(
              'assets/images/wa_btn.png',
              width: 55,
              height: 55,
            ),
          )
        ]
      ),
    );
  }
}