import 'package:flutter/material.dart';
import 'package:flutter_application_1/main_page.dart';
import 'package:flutter_application_1/sign_up.dart';
import 'package:flutter_application_1/view/initial_setting_view/initial_setting_button_view.dart';
import 'package:flutter_application_1/view/initial_setting_view/initial_setting_image_view.dart';
import 'package:flutter_application_1/view/initial_setting_view/initial_setting_title_view.dart';
import 'package:flutter_application_1/view/initial_setting_view/initial_setting_user_identifier_view.dart';
import 'package:flutter_application_1/view/initial_setting_view/initial_setting_user_name_text_view.dart';

class initial_setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //画面サイズからitemの縦サイズを指定
    var _screenWidthTextSize = MediaQuery.of(context).size.width * 0.7;

    //画面サイズからitemの横サイズを指定
    var _screenHeightTextsize = MediaQuery.of(context).size.height * 0.04;

    //画像サイズからiconのサイズを指定
    var _screenIconTextsize = MediaQuery.of(context).size.width * 0.2;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            //タイトル表示
            initialSettingTitleView(),
             
            //写真表示
            initialSettingImageView(
              _screenIconTextsize
            ),
           
           Container(
            height: 40,
           ),              
            
            // User Name欄
            initialSettingUserNameView(
              _screenWidthTextSize,
              _screenHeightTextsize
            ),

            Container(
              height: 20,
            ),

            //User Identifier欄
           initialSettingUserIdentifireView(
            _screenWidthTextSize,
            _screenHeightTextsize
           ),

            Container(
             height: 80
            ),

            //セーブボタン表示
            saveButtonView(
              _screenWidthTextSize,
              _screenHeightTextsize
            ),

            Container(
              height: 40
            ),

            const Spacer(),
          ],
        ),
      ),
    );
  }
}
