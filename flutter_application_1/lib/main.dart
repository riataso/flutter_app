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
            Padding(
              padding: EdgeInsets.all(50),
              child: Text(
                "Log in",
                style: TextStyle(fontSize: 50,fontWeight:FontWeight.bold ), 
              ),
            ),
            
           Container(
             /*child: FittedBox(
               fit: BoxFit.fill,*/
              child: Image.asset('images/38427.jpg'),
              width: MediaQuery.of(context).size.width*0.5,
              margin: EdgeInsets.all(8),
              
             //)
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "📧 Email"
                ),
              ),
              width: 200
            ),
            Container(
                child: TextField(
                decoration: InputDecoration(
                  hintText: "🔐 Password"
                ),
              ),
              width: 240,
              padding: EdgeInsets.all(20)              
            ),
            ElevatedButton(onPressed: _incrementCounter, child: Text("Log in")),
            Container(
              width: 20,
              child: TextField(
                
              ),
            )
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
