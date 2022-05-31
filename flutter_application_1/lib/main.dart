import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            /*Padding(
              padding: EdgeInsets.all(50),
              child: Text(
                "Log in",
                style: TextStyle(fontSize: 50,fontWeight:FontWeight.bold ), 
              ),
            ),*/

            Container(
              /*child: FittedBox(
               fit: BoxFit.fill,*/
              child: Image.asset('images/38427.jpg'),
              width: MediaQuery.of(context).size.width * 0.5,
              margin: EdgeInsets.fromLTRB(0, 0, 0, 50),

              //)
            ),
            Container(
              width: 270,
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: TextField(
                decoration: InputDecoration(hintText: "📧 Email",
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                    )),
              ),
            ),
            Container(
                width: 270,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                child: TextField(
                  decoration: InputDecoration(hintText: "🔐 Password",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
                )
               ),
            Container(
              //margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
              //child: ElevatedButton(onPressed: _incrementCounter, child: Text("Log in")),
              child: OutlinedButton(
                child: const Text('Button'),
                style: OutlinedButton.styleFrom(
                    primary: Colors.black,
                    shape: const StadiumBorder(),
                    side: const BorderSide(color: Colors.black),
                    minimumSize: Size(200, 40)),
                onPressed: () {},
              ),
            ),
            //ElevatedButton(onPressed: _incrementCounter, child: Text("Log in")),

            TextButton(
              child: Text('Sing up'),
              onPressed: () => print('clicked!'),
              style: TextButton.styleFrom(),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

  void _incrementCounter() {
    _counter++;
    print(_counter);
    /*
      setState(() {
        _counter++;
      });
      */
  }
}
