import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridPage1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text('標題一'),
      ),
      body: _GridPage1(),
    );
  }

}

class _GridPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(child: const Text('Text', style: TextStyle(fontSize: 25),),)
      ],
    );
  }

}