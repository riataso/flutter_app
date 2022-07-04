import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/initial_setting_controller.dart';
import 'package:flutter_application_1/main_page.dart';
import 'package:flutter_application_1/initial_setting.dart';
import 'package:flutter_application_1/view/signup_view/confirm_password_text_view.dart';
import 'package:flutter_application_1/view/signup_view/signup_button_view.dart';
import 'package:flutter_application_1/view/signup_view/signup_image_view.dart';
import 'package:flutter_application_1/view/signup_view/signup_title_view.dart';
import 'package:flutter_application_1/view/view_component/email_text_view.dart';
import 'package:flutter_application_1/view/view_component/password_text_view.dart';


class sign_up extends StatelessWidget {
  @override
  Widget build(BuildContext context){
     //画面サイズからitemの縦サイズを指定
    var _screenWidthTextSize = MediaQuery.of(context).size.width * 0.7;

    //画面サイズからitemの横サイズを指定
    var _screenHeightTextsize = MediaQuery.of(context).size.height * 0.04;

    var _controller = signupController(context);

     return Scaffold(
       body: SingleChildScrollView(
        child: Container(
	        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          
          //タイトル表示
          signupTitleView(),
            
          
          //写真表示
          signupImageView(
            MediaQuery.of(context).size.width * 0.5,
            MediaQuery.of(context).size.height* 0.1
          ),

          // Emali入力欄
            emailTextView(
                _screenWidthTextSize,_screenHeightTextsize
            ),
              

            //Password入力欄
            passwordTextView(
               _screenWidthTextSize,_screenHeightTextsize
            ),

            //ConfirmPassword入力欄
            confirmPasswordTextView(
              _screenWidthTextSize,_screenHeightTextsize
            ),
               
              Container(
               height: 40,
              ),

             
            signupButtonView(
              _screenWidthTextSize,
              _screenHeightTextsize,
               context,
               _controller.onTapInitialSetting
            ),

             Container(
              padding: EdgeInsets.all(10)
            ),

           TextButton(
              child: Text('Login'),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => mainPage()),
                )
              },
              style: TextButton.styleFrom(),
            ),


            Spacer(),


            
          ],
        )
      )
     )
     );
  }


}