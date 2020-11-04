import 'package:flutter/material.dart';

class Batun extends StatelessWidget {
  final Function fnArg;
  final String title;
  Batun(
    this.title,
    this.fnArg,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: RaisedButton(
        onPressed: fnArg,
        child: Text(title),
        color: Colors.red,
        colorBrightness: Brightness.light,
      ),
    );
  }
}
