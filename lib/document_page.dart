import 'package:flutter/material.dart';

class document_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('test_code'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/background_tatami2.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            // child: Container(
            //   color: Colors.red,
            //   width: 200,
            //   height: 200,
            // ),
          ),
        ],
      ),
    );
  }
}


