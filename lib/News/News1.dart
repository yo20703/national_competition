import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class News1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          title: Text('最新消息-1'),
      ),
      body: _News1(),
    );
  }

}

class _News1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(child: const Text('TEXT1', style: TextStyle(fontSize: 25),),)
      ],
    );
  }
}