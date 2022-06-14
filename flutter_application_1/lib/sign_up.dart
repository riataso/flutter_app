import 'package:flutter/material.dart';
import 'package:flutter_application_1/main_page.dart';


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
              width: MediaQuery.of(context).size.width * 0.3,
              margin: EdgeInsets.fromLTRB(0, 0, 0, 50),
            ),

             Container(
              width: 270,
              height: 50,
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: TextField(

                decoration: InputDecoration(hintText: "UserName",
                hintStyle: const TextStyle(fontSize: 10),
              border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                    )),
              ),
            ),

            Container(
                width: 270,
                height: 50,
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                child: TextField(
                  decoration: InputDecoration(hintText: "User Identifier",
                  hintStyle: const TextStyle(fontSize: 10),
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
                padding: EdgeInsets.only(top: 100)
              ),

              Container(
              child: OutlinedButton(
                
                child: const Text('Seve'),
                style: OutlinedButton.styleFrom(
                    primary: Colors.black,
                    shape: const StadiumBorder(),
                    side: const BorderSide(color: Color.fromRGBO(0, 0, 0, 1)),
                    minimumSize: Size(270, 40)),
                onPressed: () {
                   Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => mainPage()),
                );
                }
              ),
            ),
            Spacer()
          ],
        )
      )
     );
  }


}