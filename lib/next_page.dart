import 'package:flutter/material.dart';
import 'document_page.dart';
import 'battle_page.dart';
import 'document_page.dart';

class next_page extends StatelessWidget {
  build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: NetworkImage(
              'https://knaebrbelwfyrznszyyq.supabase.co/storage/v1/object/public/test/elements/background/select_menu_background.jpg'),
          fit: BoxFit.cover,
        )),
        child: Center(
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
                    color: Colors.white,
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
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
