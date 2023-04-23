import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/services.dart';
import 'package:marquee/marquee.dart';

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
      body: Container(
        child: TextFormField(
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
