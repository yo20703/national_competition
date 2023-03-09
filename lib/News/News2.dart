import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class News2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text('最新消息-2'),
      ),
      body: _News2(),
    );
  }

}

class _News2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(child: const Text('TEXT2', style: TextStyle(fontSize: 25),),)
      ],
    );
  }
}