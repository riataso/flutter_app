import 'package:flutter/material.dart';
import 'package:flutter_application_1/sign_up.dart';

class mainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
              width: 270,
              height: 50,
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: TextField(

                decoration: InputDecoration(hintText: "📧 Email",
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
                  decoration: InputDecoration(hintText: "🔐 Password",
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
              child: OutlinedButton(
                child: const Text('Log in'),
                style: OutlinedButton.styleFrom(
                    primary: Colors.black,
                    shape: const StadiumBorder(),
                    side: const BorderSide(color: Colors.black),
                    minimumSize: Size(270, 40)),
                onPressed: () {},
              ),
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