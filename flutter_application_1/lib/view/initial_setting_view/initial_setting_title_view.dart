import 'package:flutter/cupertino.dart';

Widget initialSettingTitleView() {
  return Container(
    padding: EdgeInsets.fromLTRB(40, 70, 50, 40),
    alignment: Alignment.centerLeft,
    child: Text(
                "Initial Setting",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
  );
} 