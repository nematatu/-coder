import 'package:flutter/material.dart';
import 'document_page.dart';
import 'battle_field.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_svg/flutter_svg.dart';

class battle_page extends StatelessWidget {
  static var _controller = TextEditingController();
  static var select_icon = '';
  String icon_number1 = 'GitHub';
  String icon_number2 = 'PhotoShop';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('battle_page'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 300,
                    child: TextField(
                      controller: _controller,
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                      ),
                      textAlign: TextAlign.center,
                      //decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => battle_field(
                                  value: _controller.text,
                                  icon: select_icon,
                                )),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      elevation: 10,
                      fixedSize: Size(60, 30),
                      shape: newMethod(),
                    ),
                    child: Icon(Icons.create),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                    onPressed: () {
                      select_icon = icon_number1;
                    },
                    child: SizedBox(
                      child: SvgPicture.network(
                        'https://knaebrbelwfyrznszyyq.supabase.co/storage/v1/object/public/test/images/$icon_number1/$icon_number1.svg',
                      ),
                      width: 70,
                      height: 70,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      select_icon = icon_number2;
                    },
                    child: SizedBox(
                      child: SvgPicture.network(
                        'https://knaebrbelwfyrznszyyq.supabase.co/storage/v1/object/public/test/images/$icon_number2/$icon_number2.svg',
                      ),
                      width: 70,
                      height: 70,
                    ),
                  ),
                  TextButton(
                    child: Text(
                      '過去に作成した札を使用',
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => document_page()),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  RoundedRectangleBorder newMethod() {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    );
  }
}
