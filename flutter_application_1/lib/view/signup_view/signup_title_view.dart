import 'package:flutter/cupertino.dart';

Widget signupTitleView() {
  return Container(
     padding: EdgeInsets.fromLTRB(20, 50, 50, 40),
              alignment: Alignment.centerLeft,
              child: Text(
                "Sign Up",
                 style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
  );
}