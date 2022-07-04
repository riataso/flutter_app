import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/singup_controller.dart';
import 'package:flutter_application_1/sign_up.dart';
import 'package:flutter_application_1/view/login_view/login_title_view.dart';
import 'package:flutter_application_1/view/login_view/logjn_image_view.dart';
import 'package:flutter_application_1/view/login_view/singup_textbutton_view.dart';
import 'package:flutter_application_1/view/view_component/email_text_view.dart';
import 'package:flutter_application_1/view/view_component/login_button_view.dart';
import 'package:flutter_application_1/view/view_component/password_text_view.dart';

class mainPage extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    //画面サイズからitemの縦サイズを指定
    var _screenWidthTextSize = MediaQuery.of(context).size.width * 0.7;

    //画面サイズからitemの横サイズを指定
    var _screenHeightTextsize = MediaQuery.of(context).size.height * 0.04;

    var controller = mainpageController(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 40
            ),

          // ログインタイトル
          Container(
            child:LoginTitle(),
            padding: EdgeInsets.fromLTRB(20, 0, 50, 40),
          ),
          
          
          Container(
            height: 40,
          ),
          
           LoginImage(
               MediaQuery.of(context).size.width * 0.5
           ),

           Container(
            height: 40,
           ), 

            // Emali入力欄
            emailTextView(
                _screenWidthTextSize,_screenHeightTextsize
            ),
              

            //Password入力欄
            passwordTextView(
               _screenWidthTextSize,_screenHeightTextsize
            ),

            Container(
             height: 40,
            ),

            //ログインボタン表示
           loginButtonView (
             _screenWidthTextSize,_screenHeightTextsize
           ),

            Container(
              height: 40,
            ),

            //サインアップボタン表示
            SingupTextButtonView(
              context,
              controller.onTapSignup
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
 
  }




 