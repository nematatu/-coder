import 'package:flutter/material.dart';
import 'package:karuta_coder/document_page.dart';
import 'battle_page.dart';
import 'document_page.dart';

class Nextpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('test_code'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/washitu.png'),
            // image: AssetImage('images/background_tatami2.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => battle_page()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  // shape: RoundedRectangleBorder(
                  //   borderRadius: BorderRadius.circular(20),
                  // ),
                  padding: EdgeInsets.all(0.0),
                  elevation: 0,
                  // primary: Colors.green,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/karuta_taisen.png'),
                      fit: BoxFit.cover,
                    ),
                    // borderRadius: BorderRadius.circular(20),
                  ),
                  height: 200,
                  width: 150,
                  // child: Center(
                  //   child: Text(
                  //     '対戦',
                  //     style: TextStyle(
                  //       fontSize: 40,
                  //       fontWeight: FontWeight.normal,
                  //       fontFamily: 'Roboto',
                  //       color: Colors.black,
                  //     ),
                  //   ),
                  // ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => document_page(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  // shape: RoundedRectangleBorder(
                  //   borderRadius: BorderRadius.circular(20),
                  // ),
                  padding: EdgeInsets.all(0.0),
                  elevation: 0,
                  primary: Colors.green,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/karuta_huda.png'),
                      fit: BoxFit.cover,
                    ),
                    // borderRadius: BorderRadius.circular(20),
                  ),
                  height: 200,
                  width: 150,
                  // child: Center(
                  //   child: Text(
                  //     '札一覧',
                  //     style: TextStyle(
                  //       fontSize: 40,
                  //       fontWeight: FontWeight.normal,
                  //       fontFamily: 'Roboto',
                  //       color: Colors.black,
                  //     ),
                  //   ),
                  // ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// class Nextpage extends StatelessWidget {
//   build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('test_code'),
//       ),
//       body: Center(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           mainAxisSize: MainAxisSize.max,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//             OutlinedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => battle_page()),
//                 );
//               },
//               style: OutlinedButton.styleFrom(
//                 primary: Colors.green[800],
//                 fixedSize: Size(150, 200),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//               ),
//               child: Text(
//                 '対戦',
//                 style: TextStyle(
//                   fontSize: 50,
//                   fontWeight: FontWeight.normal,
//                   fontFamily: 'Roboto',
//                 ),
//               ),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => document_page(),
//                   ),
//                 );
//               },
//               style: ElevatedButton.styleFrom(
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 padding: EdgeInsets.all(0.0),
//                 elevation: 0,
//                 primary: Colors.transparent,
//               ),
//               child: Container(
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage('images/ougi.png'),
//                     fit: BoxFit.cover,
//                   ),
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 height: 200,
//                 width: 150,
//                 child: Center(
//                   child: Text(
//                     '資料',
//                     style: TextStyle(
//                       fontSize: 50,
//                       fontWeight: FontWeight.normal,
//                       fontFamily: 'Roboto',
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
