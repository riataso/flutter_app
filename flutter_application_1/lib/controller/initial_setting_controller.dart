import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/initial_setting.dart';

class signupController  {

  signupController(this.context);

  BuildContext context;

  void onTapInitialSetting() {
    _transitionToInitialSetting();
  }


  void _transitionToInitialSetting() {
   Navigator.push(
     context,
     MaterialPageRoute(builder:(context) => initial_setting()),
     );
  }
}