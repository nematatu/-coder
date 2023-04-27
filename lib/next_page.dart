import 'package:flutter/material.dart';
import 'document_page.dart';
import 'battle_page.dart';

class next_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background/washitu1.jpg'),
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
                  padding: EdgeInsets.all(0.0),
                  elevation: 0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/background/karuta_taisen.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  height: 200,
                  width: 150,
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
                  padding: EdgeInsets.all(0.0),
                  elevation: 0,
                  primary: Colors.green,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/background/karuta_huda.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  height: 200,
                  width: 150,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
