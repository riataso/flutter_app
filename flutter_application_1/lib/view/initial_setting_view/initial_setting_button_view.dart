import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget saveButtonView (double WidthTextSize, double HeightTextsize){
  return Container(
    child: OutlinedButton(
                child: const Text('Log in'),
                style: OutlinedButton.styleFrom(
                    primary: Colors.black,
                    shape: const StadiumBorder(),
                    side: const BorderSide(color: Colors.black),
                    minimumSize:
                        Size(WidthTextSize,HeightTextsize)),
                onPressed: () => {}
                  )
  );
}