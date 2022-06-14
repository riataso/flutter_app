import 'package:flutter/material.dart';


class sign_up extends StatelessWidget {
  @override
  Widget build(BuildContext context){
     return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
               padding: EdgeInsets.fromLTRB(20, 50, 50, 40),
              alignment: Alignment.centerLeft,
              child: Text(
                "Sign Up",
                 style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ),

           Container(
              child: Image.asset('images/signupimage.jpeg'),
              width: MediaQuery.of(context).size.width * 0.5,
              margin: EdgeInsets.fromLTRB(0, 0, 0, 50),
            ),
          ],
        )
      )
     );
  }


}