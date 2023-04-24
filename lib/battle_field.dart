import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/services.dart';

class battle_field extends StatelessWidget {
  final _controller = TextEditingController();
  final _StringData = 'assets/documents/odai.txt';
  String _text = '';

  @override
  build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('battle_field'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          TextFormField(
            controller: _controller,
            textAlign: TextAlign.right,
            decoration: InputDecoration(border: InputBorder.none),
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.normal,
              fontFamily: ('Roboto'),
            ),
            enabled: false,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final value = await loadIt();
          _controller.text = value;
        },
        child: Icon(Icons.savings),
      ),
    );
  }

  Future<String> getDataAsset(String path) async {
    return await rootBundle.loadString(path);
  }

  Future<String> loadIt() async {
    try {
      final res = await getDataAsset(_StringData);
      return res;
    } catch (e) {
      return 'no data';
    }
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint p = Paint();
    p.style = PaintingStyle.fill;
    p.color = Color.fromARGB(150, 200, 0, 255);
    Rect r = Rect.fromLTWH(50, 50, 150, 150);
    canvas.drawRect(r, p);

    p.style = PaintingStyle.stroke;
    p.color = Color.fromARGB(100, 100, 150, 150);
    p.strokeWidth = 10;
    r = Rect.fromLTWH(100, 100, 150, 150);
    canvas.drawRect(r, p);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
