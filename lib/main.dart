import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './next_page.dart';
import './battle_page.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        //fontFamily: 'Roboto',
      ),
      home: MyHomePage(
        title: 'test_code',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background/sakura.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Image.asset('assets/background/logo1.png'),
                  width: 400,
                  height: 300,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.pink,
                      elevation: 10,
                      fixedSize: Size(200, 60),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => next_page()),
                    );
                  },
                  child: Text('スタート'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
