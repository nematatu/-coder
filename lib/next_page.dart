import 'package:flutter/material.dart';
import 'package:karuta_coder/document_page.dart';
import 'battle_page.dart';
import 'document_page.dart';

class Nextpage extends StatelessWidget {
  build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('test_code'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => battle_page()),
                );
              },
              style: OutlinedButton.styleFrom(
                primary: Colors.blue,
                fixedSize: Size(150, 200),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(
                '対戦',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => document_page(),
                  ),
                );
              },
              style: OutlinedButton.styleFrom(
                primary: Colors.blue,
                fixedSize: Size(150, 200),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(
                '資料',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
