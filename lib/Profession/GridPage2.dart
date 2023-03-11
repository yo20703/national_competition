import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridPage2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text('標題二'),
      ),
      body: _GridPage2(),
    );
  }

}

class _GridPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(child: const Text('Text', style: TextStyle(fontSize: 25),),)
      ],
    );
  }

}