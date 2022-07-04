import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget signupButtonView(double widthTextsize, double heightTextsize,BuildContext context, Function onTapInitialSetting) {
  return Container(
    child: OutlinedButton(       
                child: const Text(
                  'SignUp'
                  ),
                style: OutlinedButton.styleFrom(
                    primary: Colors.black,
                    shape: const StadiumBorder(),
                    side: const BorderSide(color: Color.fromRGBO(0, 0, 0, 1)),
                    minimumSize: Size(widthTextsize,heightTextsize)),
                onPressed: () {
                  onTapInitialSetting();
                }
      ),
  );
}