import 'package:flutter/material.dart';

Widget loginButtonView (double widthTextsize, double heightTextsize) {
  return Container(
    child: OutlinedButton(
                child: const Text('Log in'),
                style: OutlinedButton.styleFrom(
                    primary: Colors.black,
                    shape: const StadiumBorder(),
                    side: const BorderSide(color: Colors.black),
                    minimumSize:
                        Size(widthTextsize, heightTextsize)),
                onPressed: () {},
              ),
  );
}