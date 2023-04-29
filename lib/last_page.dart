import 'package:flutter/material.dart';

class last_page extends StatefulWidget {
  final int get_point;
  const last_page({Key? key, required this.get_point}) : super(key: key);
  State<last_page> createState() => _last_pageState();
}

class _last_pageState extends State<last_page> {
  int get_point = 0;

  @override
  void initState() {
    super.initState();
    get_point = widget.get_point;
  }

  build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              get_point.toString(),
              style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
                fontSize: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
