import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dart_openai/openai.dart';
import './next_page.dart';
import './battle_page.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
        fontFamily: 'Roboto',
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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/sakura.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset(
                'images/karutalogo.png',
                width: 500,
                height: 500,
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
                    MaterialPageRoute(builder: (context) => Nextpage()),
                  );
                },
                child: Text('スタート'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: <Widget>[
//             const Text(
//               'test',
//               style: TextStyle(
//                 fontSize: 50,
//                 fontWeight: FontWeight.w500,
//                 fontFamily: ('Roboto'),
//               ),
//             ),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                   primary: Colors.blue,
//                   elevation: 10,
//                   fixedSize: Size(200, 60),
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(50))),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => Nextpage()),
//                 );
//               },
//               child: Text('スタート'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
