import 'package:flutter/material.dart';
import 'package:pokekoto/theme.dart';
import 'package:pokekoto/ui/setting_detail_page.dart';

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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: themeData.accentColor,
        onPressed: () {
          _onTapToDetail("");
        },
      ),
      body: ListView.builder(
        itemCount: _settingList.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(_settingList[index]),
            onTap: () {
              setState(() {
                _id = index;
              });
              _onTapToDetail(_settingList[index]);
            },
          );
        },
      ),
    );
  }

  void _onTapToDetail(String setting) {
    Navigator.push(context, MaterialPageRoute<Null>(
      settings: const RouteSettings(name: "/settingDetail"),
      builder: (BuildContext context) => SettingDetailPage(setting),
    ));
  }
}
