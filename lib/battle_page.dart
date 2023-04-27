import 'package:flutter/material.dart';
import 'document_page.dart';
import 'battle_field.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_svg/flutter_svg.dart';

class battle_page extends StatefulWidget {
  State<battle_page> createState() => _battle_pageState();
}

class Data {
  final String assets_image;
  Data(this.assets_image) : super();

  @override
  String toString() {
    return assets_image;
  }
}

class Sub_Data {
  final String assets_svg;
  Sub_Data(this.assets_svg) : super();

  @override
  String toString() {
    return assets_svg;
  }
}

class _battle_pageState extends State<battle_page> {
  static final _Data = [
    Data('assets/images/GitHub/GitHub.jpg'),
    Data('assets/images/android/android.jpg'),
    Data('assets/images/java/java.jpg'),
    Data('assets/images/PhotoShop/PhotoShop.jpg'),
    Data('assets/images/Hackathon/Hackathon.jpg'),
    Data('assets/images/VSCode/VSCode.jpg'),
    Data('assets/images/Python/Python.jpg'),
  ];

  Data _Data0 = _Data[0];
  Data _Data1 = _Data[1];
  Data _Data2 = _Data[2];
  Data _Data3 = _Data[3];
  Data _Data4 = _Data[4];
  Data _Data5 = _Data[5];
  Data _Data6 = _Data[6];

  static final Sub_Data = [
    Data('assets/images/GitHub/GitHub.svg'),
  ];
  Data Sub_item = Sub_Data[0];

  void setData() {
    setState(() {
      _Data.shuffle();
      _Data0 = _Data[0];
      _Data1 = _Data[1];
      _Data2 = _Data[2];
      _Data3 = _Data[3];
      _Data4 = _Data[4];
      _Data5 = _Data[5];
      _Data6 = _Data[6];
    });
  }

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
          setData();
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => battle_field(
                      value: _controller.text,
                      icon: select_icon,
                      test_icon: Sub_item.toString(),
                      fuda0: _Data0.toString(),
                      fuda1: _Data1.toString(),
                      fuda2: _Data2.toString(),
                      fuda3: _Data3.toString(),
                      fuda4: _Data4.toString(),
                      fuda5: _Data5.toString(),
                      fuda6: _Data6.toString(),
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
