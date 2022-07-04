import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget initialSettingUserIdentifireView (double widthTextSize, double heightTextSize){
  return Container (
    child: Column(children: [
              Container(
                width: widthTextSize,
                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Row(
                  children: [
                    Text(
                      "User Name",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
              Container(
                width: widthTextSize,
                height: heightTextSize,
                padding: EdgeInsets.all(2),
                margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  )),
                ),
              ),
            ])
  );
}