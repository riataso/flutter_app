import 'package:flutter/material.dart';

Widget passwordTextView(double widthTextsize, double heightTextsize) {
   return Container(
       child: Column(
              children: [
                Container(
                  width: widthTextsize,
                  margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                   child:Row(
                    children: [
                      Text(
                        "Password",
                        style: TextStyle(fontSize: 15),
                        ),       
                       
                        
        
                    ],
                  ),
                ),

                Container(
                  width: widthTextsize,
                  height: heightTextsize,
                 padding: EdgeInsets.all(2),
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: TextField(
                     obscureText: true,
                        obscuringCharacter: '・',
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    )),
                  ),
                  
                ),
              ]
            )
   );
}
 