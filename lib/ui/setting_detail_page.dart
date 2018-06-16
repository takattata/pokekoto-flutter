import 'package:flutter/material.dart';

class SettingDetailPage extends StatelessWidget {
  String _text;

  SettingDetailPage(this._text);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test"),
      ),
      body: Center(
        child: Text(_text),
      ),
    );
  }
}

//class SettingDetailPage extends StatefulWidget {
//  String _text;
//
//  SettingDetailPage(this._text);
//
//  @override
//  _SettingDetailPageState createState() => _SettingDetailPageState();
//}
//
//class _SettingDetailPageState extends State<SettingDetailPage> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("Test"),
//      ),
//      body: Center(
//        child: Text(widget._text),
//      ),
//    );
//  }
//}
