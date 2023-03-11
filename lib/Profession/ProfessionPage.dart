
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:national_competition/Profession/GridPage1.dart';

import 'GridPage2.dart';

class ProfessionPage extends StatefulWidget {
  @override
  State<ProfessionPage> createState() => _ProfessionPageState();

}

class _ProfessionPageState extends State<ProfessionPage> {
  Container gridButton(Widget? page, String text1, String text2) {
    return Container(
      decoration: ShapeDecoration(
          color: Colors.grey[300],
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          )),
      margin: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            text1,
            style: const TextStyle(fontSize: 25),
          ),
          Container(
            width: 150,
            height: 40,
            decoration: ShapeDecoration(
                color: Colors.grey[600],
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)))),
            child: const Center(
              child: Text(
                '競賽資訊',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => page!));
                });
              },
              child: Text(
                text2,
                style: TextStyle(fontSize: 20),
              ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: const Text(
          '職類介紹',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1, childAspectRatio: 1.5),
        children: <Widget> [
          gridButton(GridPage1(), '2023-01-19', '公開徵求全國技能競賽青年組「銲接」、「花藝」、「旅館接待」、「中餐烹飪」及青少年組「機器人」等5職類裁判長'),
          gridButton(GridPage2(), '2023-01-09', '行政院新聞傳播處推廣「2022國際技能競賽成果」政策說明訊息'),

        ],
      ),
    );
  }
}
