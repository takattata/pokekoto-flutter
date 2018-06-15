import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SettingListWidget(),
      ),
    );
  }
}

class SettingListWidget extends StatefulWidget {
  @override
  _SettingListWidgetState createState() => _SettingListWidgetState();
}

class _SettingListWidgetState extends State<SettingListWidget> {
  List<String> _settingList = <String>["a", "b"];
  int _id;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: ListView.builder(
        itemCount: _settingList.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(_settingList[index]),
            onTap: () {
              setState(() {
                _id = index;
              });
            },
          );
        },
      ),
    );
  }
}
