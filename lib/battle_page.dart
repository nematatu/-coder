import 'package:flutter/material.dart';
import 'document_page.dart';
import 'battle_field.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math';

class battle_page extends StatefulWidget {
  State<battle_page> createState() => _battle_pageState();
}

class _battle_pageState extends State<battle_page> {
  static var _controller = TextEditingController();
  static var select_icon = '';
  String icon_number1 = 'GitHub';
  String icon_number2 = 'PhotoShop';

  @override
  build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 130),
                child: const Text(
                  'キーワードを入力してください',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    //fontFamily: 'Roboto',
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 300,
                    child: TextField(
                      controller: _controller,
                      style: const TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        //fontFamily: 'Roboto',
                      ),
                      textAlign: TextAlign.center,
                      //decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
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
                      child: SvgPicture.asset(
                        'assets/images/GitHub/GitHub.svg',
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
                      child: SvgPicture.asset(
                        'assets/images/PhotoShop/PhotoShop.svg',
                      ),
                      width: 70,
                      height: 70,
                    ),
                  ),
                  TextButton(
                    child: const Text(
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => battle_field(
                      value: _controller.text,
                      icon: select_icon,
                      /*fuda_icon0: Sub_svg0.toString(),
                      fuda_icon1: Sub_svg1.toString(),
                      fuda_icon2: Sub_svg2.toString(),
                      fuda_icon3: Sub_svg3.toString(),
                      fuda_icon4: Sub_svg4.toString(),
                      fuda_icon5: Sub_svg5.toString(),
                      fuda_icon6: Sub_svg6.toString(),
                      fuda0: _Data0.toString(),
                      fuda1: _Data1.toString(),
                      fuda2: _Data2.toString(),
                      fuda3: _Data3.toString(),
                      fuda4: _Data4.toString(),
                      fuda5: _Data5.toString(),
                      fuda6: _Data6.toString(),
                      StringData0: context0.toString(),
                      StringData1: context1.toString(),
                      StringData2: context2.toString(),
                      StringData3: context3.toString(),
                      StringData4: context4.toString(),
                      StringData5: context5.toString(),
                      StringData6: context6.toString(),
                      con_num0: ran_num0,
                      con_num1: ran_num1,
                      con_num2: ran_num2,
                      con_num3: ran_num3,
                      con_num4: ran_num4,
                      con_num5: ran_num5,
                      con_num6: ran_num6,*/
                    )),
          );
        },
        child: Icon(Icons.create),
      ),
    );
  }

  RoundedRectangleBorder newMethod() {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    );
  }
}
