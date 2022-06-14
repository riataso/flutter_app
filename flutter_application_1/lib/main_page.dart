import 'package:flutter/material.dart';
import 'package:flutter_application_1/sign_up.dart';

class mainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //画面サイズからitemの縦サイズを指定
    var _screenWidthTextSize = MediaQuery.of(context).size.width*0.7;

    //画面サイズからitemの横サイズを指定
    var _screenHeightTextsize = MediaQuery.of(context).size.height*0.06;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(top: 40),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(20, 50, 50, 40),
              alignment: Alignment.centerLeft,
              child: Text(
                "Log in",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ),
            
            Container(
              child: Image.asset('images/38427.jpg'),
              width: MediaQuery.of(context).size.width * 0.5,
              margin: EdgeInsets.fromLTRB(0, 0, 0, 50),
            ),

            Container(
              child: Text(
                "Email"

              ),
            ),

            //Email入力欄
            Container(
              width:   _screenWidthTextSize,
              height:  _screenHeightTextsize,
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: TextField(

                decoration: InputDecoration(
              border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                    )),
              ),
            ),

            //Password入力欄
            Container(
                width:  _screenWidthTextSize,
                height: _screenHeightTextsize,
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                child: TextField(
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

            Container(
              padding: EdgeInsets.only(top: 20),
            ),

            Container(
              child: OutlinedButton(
                child: const Text('Log in'),
                style: OutlinedButton.styleFrom(
                    primary: Colors.black,
                    shape: const StadiumBorder(),
                    side: const BorderSide(color: Colors.black),
                    minimumSize: Size(_screenWidthTextSize, _screenHeightTextsize)),
                onPressed: () {},
              ),
            ),

            Container(
              padding: EdgeInsets.only(top: 20),
            ),

            TextButton(
              child: Text('Sing up'),
              onPressed: () => {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => sign_up()),
                )
              },
              style: TextButton.styleFrom(),
            ),
             const Spacer(),
          ],
        ),
      ),
    );
  }
}