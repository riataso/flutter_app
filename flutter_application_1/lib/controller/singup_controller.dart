import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/sign_up.dart';

class mainpageController {

mainpageController(this.context);

  BuildContext context;
  
  void onTapSignup() {
    _transitionToSignup();
  }

  void _transitionToSignup() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => sign_up()),
    );
  }
}


