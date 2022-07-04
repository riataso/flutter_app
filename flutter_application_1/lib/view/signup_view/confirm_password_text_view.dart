import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget confirmPasswordTextView (double widthTextsize, double heightTextsize) {
  return Container(
    child: Column(
                children: [
                   Container(
                      width: widthTextsize,
                      margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Row(
                        children: [
                          Text(
                        "Confirm Password",
                        style: TextStyle(fontSize: 15),
                        ),       
                      ],
                      )
                   ),
              
              Container(
                    width:  widthTextsize,
                    height: heightTextsize,
                    padding: EdgeInsets.all(2),
                  child: TextField(
                    obscureText: true,
                    obscuringCharacter: '・',
                    decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
                )
               ),
              ]
              )
  );
}