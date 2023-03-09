import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:national_competition/News/News1.dart';

import 'News2.dart';

class NewsListPage extends StatefulWidget {
  State<NewsListPage> createState() => _NewsListPageState();
}

class _NewsListPageState extends State<NewsListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: const Text(
          '最新消息',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('[會議資料]第53屆分區技能競賽青少年組電子職類說明會會議資料', style: TextStyle(fontSize: 20)),
            onTap: (){
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => News1()));
              });
            },
          ),
          Divider(thickness: 2, color: Colors.brown[400],),
          ListTile(
            title: const Text('技能競賽影音圖像授權使用原則', style: TextStyle(fontSize: 20)),
            onTap: (){
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => News2()));
              });
            },
          )
        ],
      ),
    );
  }
}