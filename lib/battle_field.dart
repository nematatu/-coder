import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'dart:math';
import 'package:http/http.dart' as http;
import 'dart:async';

import 'package:test/last_page.dart';

class battle_field extends StatefulWidget {
  final String value;
  final String icon;

  const battle_field({
    Key? key,
    required this.value,
    required this.icon,
  }) : super(key: key);

  State<battle_field> createState() => _battle_fieldState();
}

class Data {
  final String assets_image;
  final String assets_svg;
  Data(this.assets_image, this.assets_svg) : super();

  @override
  String toString() {
    return assets_image;
  }
}

class StringData {
  final String _StringData;

  StringData(this._StringData) : super();

  @override
  String toString() {
    return _StringData;
  }
}

class _battle_fieldState extends State<battle_field> {
  static final _Data = [
    Data('assets/images/GitHub/GitHub.jpg', 'assets/images/GitHub/GitHub.svg'),
    Data('assets/images/android/android.jpg',
        'assets/images/android/android.svg'),
    Data('assets/images/java/java.jpg', 'assets/images/java/java.svg'),
    Data('assets/images/PhotoShop/PhotoShop.jpg',
        'assets/images/PhotoShop/PhotoShop.svg'),
    Data('assets/images/Hackathon/Hackathon.jpg',
        'assets/images/Hackathon/Twitter.svg'),
    Data('assets/images/VSCode/VSCode.jpg', 'assets/images/VSCode/VSCode.svg'),
    Data('assets/images/Python/Python.jpg', 'assets/images/Python/Python.svg'),
  ];

  static final String_Data = [
    StringData('開発の記録　管理する場所　Githubでしまえ'),
    StringData('限りなく　未来への扉を　開くAndroid'),
    StringData('開発者たち　Javaで技術磨く　未来に向かう'),
    StringData('画像を編集　写真を美しく　新たな風景'),
    StringData('発想を結集し　目指すは最高峰　ハッカソンだ'),
    StringData('コードの海　青春を刻む　VSCodeの夜'),
    StringData('静かに流れ　コードを書き続ける　Pythonの夜'),
  ];
  static int ran_num0 = Random().nextInt(6);
  static int ran_num1 = Random().nextInt(6);
  static int ran_num2 = Random().nextInt(6);
  static int ran_num3 = Random().nextInt(6);
  static int ran_num4 = Random().nextInt(6);
  static int ran_num5 = Random().nextInt(6);
  static int ran_num6 = Random().nextInt(6);
  static int ran_numx = Random().nextInt(6);
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

  String url =
      'https://knaebrbelwfyrznszyyq.supabase.co/storage/v1/object/public/test/images/docker/docker.txt';

  String context0 = String_Data[ran_numx].toString();

  Timer? _timer;

  final _controller = TextEditingController();
  final __controller = TextEditingController();
  final _StringData = 'assets/documents/odai.txt';
  String _text = '';
  String image_name = '';
  String view_icon = '';
  int get_point = 0;
  @override
  void initState() {
    super.initState();
    image_name = widget.value;
    view_icon = widget.icon;
    _timer = Timer(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => last_page(
                  get_point: get_point,
                )),
      );
    });
  }

  build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MyContainer(image_name, view_icon),
                Spacer(),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        if (ran_num0 == ran_numx) {
                          print('正解です');
                          context0 = '正解です';
                          get_point++;
                        } else {
                          print('間違っています');
                          context0 = '間違っています';
                          get_point--;
                        }
                        setState(() {});
                      });
                    },
                    child: My_Sub_Container(_Data0, Sub_svg0)),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    if (ran_num1 == ran_numx) {
                      print('正解です');
                      context0 = '正解です';
                      get_point++;
                    } else {
                      print('間違っています');
                      context0 = '間違っています';
                      get_point--;
                    }
                    setState(() {});
                  },
                  child: My_Sub_Container(_Data1, Sub_svg1),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    if (ran_num2 == ran_numx) {
                      print('正解です');
                      context0 = '正解です';
                      get_point++;
                    } else {
                      print('間違っています');
                      context0 = '間違っています';
                      get_point--;
                    }
                    setState(() {});
                  },
                  child: My_Sub_Container(_Data2, Sub_svg2),
                ),
              ],
            ),
            /*TextField(
              controller: _controller,
            ),*/
            SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    context0,
                    style: const TextStyle(
                      //fontFamily: ('Roboto'),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: Ink(
                      decoration: const ShapeDecoration(
                        color: Colors.blue, // 背景色
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.refresh),
                        color: Colors.white,
                        onPressed: () {
                          icon_press();
                        },
                      ),
                    ),
                    label: Text(''),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    if (ran_num3 == ran_numx) {
                      print('正解です');
                      context0 = '正解です';
                      get_point++;
                    } else {
                      print('間違っています');
                      context0 = '間違っています';
                      get_point--;
                    }
                    setState(() {});
                  },
                  child: My_Sub_Container(_Data3, Sub_svg3),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    if (ran_num4 == ran_numx) {
                      print('正解です');
                      context0 = '正解です';
                      get_point++;
                    } else {
                      print('間違っています');
                      context0 = '間違っています';
                      get_point--;
                    }
                    setState(() {});
                  },
                  child: My_Sub_Container(_Data4, Sub_svg4),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    if (ran_num5 == ran_numx) {
                      print('正解です');
                      context0 = '正解です';
                      get_point++;
                    } else {
                      print('間違っています');
                      context0 = '間違っています';
                      get_point--;
                    }
                    setState(() {});
                  },
                  child: My_Sub_Container(_Data5, Sub_svg5),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    if (ran_num6 == ran_numx) {
                      print('正解です');
                      context0 = '正解です';
                      get_point++;
                    } else {
                      print('間違っています');
                      context0 = '間違っています';
                      get_point--;
                    }
                    setState(() {});
                  },
                  child: My_Sub_Container(_Data6, Sub_svg6),
                ),
              ],
            ),
          ],
        ),
      ),
      /*floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final value = await loadIt();
          _controller.text = value;
        },
        child: Icon(Icons.savings),
      ),*/
    );
  }

  void touch() {
    GestureDetector(
      onTap: () {},
    );
  }

  void icon_press() {
    setState(() {
      ran_numx = Random().nextInt(6);
      context0 = String_Data[ran_numx].toString();

      int ran_num0 = Random().nextInt(6);
      int ran_num1 = Random().nextInt(6);
      int ran_num2 = Random().nextInt(6);
      int ran_num3 = Random().nextInt(6);
      int ran_num4 = Random().nextInt(6);
      int ran_num5 = Random().nextInt(6);
      int ran_num6 = Random().nextInt(6);

      /*_Data0 = _Data[ran_num0].assets_image;
                            _Data1 = _Data[ran_num1].assets_image;
                            _Data2 = _Data[ran_num2].assets_image;
                            _Data3 = _Data[ran_num3].assets_image;
                            _Data4 = _Data[ran_num4].assets_image;
                            _Data5 = _Data[ran_num5].assets_image;
                            _Data6 = _Data[ran_num6].assets_image;

                            Sub_svg0 = _Data[ran_num0].assets_svg;
                            Sub_svg1 = _Data[ran_num1].assets_svg;
                            Sub_svg2 = _Data[ran_num2].assets_svg;
                            Sub_svg3 = _Data[ran_num3].assets_svg;
                            Sub_svg4 = _Data[ran_num4].assets_svg;
                            Sub_svg5 = _Data[ran_num5].assets_svg;
                            Sub_svg6 = _Data[ran_num6].assets_svg;*/
      setState(() {});
    });
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

//
Container MyContainer(String imageName, String view_icon) {
  return Container(
    width: 100,
    height: 160,
    color: Color.fromARGB(255, 121, 21, 21),
    child: Stack(
      children: <Widget>[
        Positioned(
          top: 5,
          right: 7.5,
          child: Container(
            width: 85,
            height: 150,
            color: Color.fromARGB(255, 218, 218, 218),
            child: CachedNetworkImage(
              placeholder: (context, url) => Transform.scale(
                scale: 0.3,
                child: CircularProgressIndicator(),
              ),
              imageUrl:
                  'https://knaebrbelwfyrznszyyq.supabase.co/storage/v1/object/public/test/images/$imageName/$imageName.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
            top: 0,
            right: 0,
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 25,
              child: ClipOval(
                  child: SvgPicture.network(
                'https://knaebrbelwfyrznszyyq.supabase.co/storage/v1/object/public/test/images/$view_icon/$view_icon.svg',
                placeholderBuilder: (BuildContext context) => Container(
                  padding: const EdgeInsets.all(30.0),
                  child: const CircularProgressIndicator(),
                ),
              )),
            )),
      ],
    ),
  );
}

Container My_Sub_Container(
    String Sub_imageName, String Sub_view_icon /*,int con_num*/) {
  return Container(
    width: 100,
    height: 160,
    color: Color.fromARGB(255, 121, 21, 21),
    child: Stack(
      children: <Widget>[
        Positioned(
          top: 5,
          right: 7.5,
          child: GestureDetector(
            child: Container(
              width: 85,
              height: 150,
              color: Color.fromARGB(255, 218, 218, 218),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Sub_imageName),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
            top: 0,
            right: 0,
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 25,
              child: ClipOval(
                  child: SvgPicture.asset(
                (Sub_view_icon),
                placeholderBuilder: (BuildContext context) => Container(
                  padding: const EdgeInsets.all(30.0),
                  child: const CircularProgressIndicator(),
                ),
              )),
            )),
      ],
    ),
  );
}
