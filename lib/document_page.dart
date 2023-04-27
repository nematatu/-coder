import 'package:flutter/material.dart';

class document_page extends StatelessWidget {
  @override
  build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: NetworkImage('assets/background/background_tatami2.jpeg'),
          fit: BoxFit.cover,
        )),
      ),
    );
  }
}
