import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'News/NewsListPage.dart';
import 'Profession/ProfessionPage.dart';
import 'SkillCompetition/SkillCompetition.dart';

class MainPageBody extends StatefulWidget{
  _MainPageBodyState createState() => _MainPageBodyState();
}

class _MainPageBodyState extends State<MainPageBody>{
  Container newContainer({Color? color, Widget? page, String? text}){
    return Container(
      width: 130,
      height: 130,
      margin: EdgeInsets.all(10),
      child: TextButton(
        onPressed: () { 
          setState(() {
            Navigator.push(context, MaterialPageRoute(builder: (context) => page!));
          });
        },
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))
            )
          ),
          backgroundColor: MaterialStateProperty.all(color)
        ),
        child: Container(
            height: 60,
            child: Center(
              child: Text(
                  text!,
                  style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
        ),
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          newContainer(color: Colors.red, text: '最新消息', page: NewsListPage()),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              newContainer(color: Colors.red, page: ProfessionPage(), text: '職類介紹'),
              newContainer(color: Colors.red, page: SkillPage(), text: '技能競賽'),
            ],
          )
        ],
      ),
    );
  }
  
}