import 'package:flutter/material.dart';
import 'document_page.dart';
import 'battle_field.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math';

class battle_page extends StatefulWidget {
  State<battle_page> createState() => _battle_pageState();
}

class Data {
  final String assets_image;
  final String assets_svg;
  final String assets_str;
  Data(this.assets_image, this.assets_svg, this.assets_str) : super();

  @override
  String toString() {
    return assets_image;
  }
}

class _battle_pageState extends State<battle_page> {
  static final _Data = [
    Data('assets/images/GitHub/GitHub.jpg', 'assets/images/GitHub/GitHub.svg',
        '開発の記録　管理する場所　Githubでしまえ'),
    Data('assets/images/android/android.jpg',
        'assets/images/android/android.svg', '限りなく　未来への扉を　開くAndroid'),
    Data('assets/images/java/java.jpg', 'assets/images/java/java.svg',
        '開発者たち　Javaで技術磨く　未来に向かう'),
    Data('assets/images/PhotoShop/PhotoShop.jpg',
        'assets/images/PhotoShop/PhotoShop.svg', '画像を編集　写真を美しく　新たな風景'),
    Data('assets/images/Hackathon/Hackathon.jpg',
        'assets/images/Hackathon/Twitter.svg', '発想を結集し　目指すは最高峰　ハッカソンだ'),
    Data('assets/images/VSCode/VSCode.jpg', 'assets/images/VSCode/VSCode.svg',
        'コードの海　青春を刻む　VSCodeの夜'),
    Data('assets/images/Python/Python.jpg', 'assets/images/Python/Python.svg',
        '静かに流れ　コードを書き続ける　Pythonの夜'),
  ];
  static int ran_num0 = Random().nextInt(6);
  static int ran_num1 = Random().nextInt(6);
  static int ran_num2 = Random().nextInt(6);
  static int ran_num3 = Random().nextInt(6);
  static int ran_num4 = Random().nextInt(6);
  static int ran_num5 = Random().nextInt(6);
  static int ran_num6 = Random().nextInt(6);

  String _Data0 = _Data[ran_num0].assets_image;
  String _Data1 = _Data[ran_num1].assets_image;
  String _Data2 = _Data[ran_num2].assets_image;
  String _Data3 = _Data[ran_num3].assets_image;
  String _Data4 = _Data[ran_num4].assets_image;
  String _Data5 = _Data[ran_num5].assets_image;
  String _Data6 = _Data[ran_num6].assets_image;

  String Sub_svg0 = _Data[ran_num0].assets_svg;
  String Sub_svg1 = _Data[ran_num1].assets_svg;
  String Sub_svg2 = _Data[ran_num2].assets_svg;
  String Sub_svg3 = _Data[ran_num3].assets_svg;
  String Sub_svg4 = _Data[ran_num4].assets_svg;
  String Sub_svg5 = _Data[ran_num5].assets_svg;
  String Sub_svg6 = _Data[ran_num6].assets_svg;

  String context0 = _Data[ran_num0].assets_str;
  String context1 = _Data[ran_num1].assets_str;
  String context2 = _Data[ran_num2].assets_str;
  String context3 = _Data[ran_num3].assets_str;
  String context4 = _Data[ran_num4].assets_str;
  String context5 = _Data[ran_num5].assets_str;
  String context6 = _Data[ran_num6].assets_str;

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
                    fontFamily: 'Roboto',
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
                        fontFamily: 'Roboto',
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
                      fuda_icon0: Sub_svg0.toString(),
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
