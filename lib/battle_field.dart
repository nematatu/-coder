import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cached_network_image/cached_network_image.dart';

class battle_field extends StatefulWidget {
  final String value;
  final String icon;
  final String fuda_icon0;
  final String fuda_icon1;
  final String fuda_icon2;
  final String fuda_icon3;
  final String fuda_icon4;
  final String fuda_icon5;
  final String fuda_icon6;
  final String fuda0;
  final String fuda1;
  final String fuda2;
  final String fuda3;
  final String fuda4;
  final String fuda5;
  final String fuda6;
  final String StringData0;
  final String StringData1;
  final String StringData2;
  final String StringData3;
  final String StringData4;
  final String StringData5;
  final String StringData6;
  final int con_num0;
  final int con_num1;
  final int con_num2;
  final int con_num3;
  final int con_num4;
  final int con_num5;
  final int con_num6;

  const battle_field({
    Key? key,
    required this.value,
    required this.icon,
    required this.fuda_icon0,
    required this.fuda_icon1,
    required this.fuda_icon2,
    required this.fuda_icon3,
    required this.fuda_icon4,
    required this.fuda_icon5,
    required this.fuda_icon6,
    required this.fuda0,
    required this.fuda1,
    required this.fuda2,
    required this.fuda3,
    required this.fuda4,
    required this.fuda5,
    required this.fuda6,
    required this.StringData0,
    required this.StringData1,
    required this.StringData2,
    required this.StringData3,
    required this.StringData4,
    required this.StringData5,
    required this.StringData6,
    required this.con_num0,
    required this.con_num1,
    required this.con_num2,
    required this.con_num3,
    required this.con_num4,
    required this.con_num5,
    required this.con_num6,
  }) : super(key: key);

  State<battle_field> createState() => _battle_fieldState();
}

class _battle_fieldState extends State<battle_field> {
  final _controller = TextEditingController();
  final __controller = TextEditingController();
  final _StringData = 'assets/documents/odai.txt';
  String _text = '';
  String image_name = 'PhotoShop';
  String view_icon = '';
  String fuda0 = '';
  String fuda1 = '';
  String fuda2 = '';
  String fuda3 = '';
  String fuda4 = '';
  String fuda5 = '';
  String fuda6 = '';
  String fuda_icon0 = '';
  String fuda_icon1 = '';
  String fuda_icon2 = '';
  String fuda_icon3 = '';
  String fuda_icon4 = '';
  String fuda_icon5 = '';
  String fuda_icon6 = '';
  String StringData0 = '';
  String StringData1 = '';
  String StringData2 = '';
  String StringData3 = '';
  String StringData4 = '';
  String StringData5 = '';
  String StringData6 = '';
  int con_num0 = 0;
  int con_num1 = 0;
  int con_num2 = 0;
  int con_num3 = 0;
  int con_num4 = 0;
  int con_num5 = 0;
  int con_num6 = 0;
  String correct = '';

  @override
  void initState() {
    super.initState();
    image_name = widget.value;
    view_icon = widget.icon;
    fuda0 = widget.fuda0;
    fuda1 = widget.fuda1;
    fuda2 = widget.fuda2;
    fuda3 = widget.fuda3;
    fuda4 = widget.fuda4;
    fuda5 = widget.fuda5;
    fuda6 = widget.fuda6;
    fuda_icon0 = widget.fuda_icon0;
    fuda_icon1 = widget.fuda_icon1;
    fuda_icon2 = widget.fuda_icon2;
    fuda_icon3 = widget.fuda_icon3;
    fuda_icon4 = widget.fuda_icon4;
    fuda_icon5 = widget.fuda_icon5;
    fuda_icon6 = widget.fuda_icon6;
    StringData0 = widget.StringData0;
    StringData1 = widget.StringData1;
    StringData2 = widget.StringData2;
    StringData3 = widget.StringData3;
    StringData4 = widget.StringData4;
    StringData5 = widget.StringData5;
    StringData6 = widget.StringData6;
    con_num0 = widget.con_num0;
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
                    if (con_num0 == con_num0) {
                      print('正解です');
                    } else {
                      print('不正解です');
                    }
                  },
                  child: My_Sub_Container(fuda0, fuda_icon0),
                ),
                Text(correct),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    if (con_num1 == con_num0) {
                      print('正解です');
                    } else {
                      print('不正解です');
                    }
                  },
                  child: My_Sub_Container(fuda1, fuda_icon1),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    if (con_num2 == con_num0) {
                      print('正解です');
                    } else {
                      print('不正解です');
                    }
                  },
                  child: My_Sub_Container(fuda2, fuda_icon2),
                ),
              ],
            ),
            /*TextField(
              controller: _controller,
            ),*/
            Text(
              StringData0,
              style: TextStyle(
                fontFamily: ('Roboto'),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                My_Sub_Container(fuda3, fuda_icon3),
                Spacer(),
                My_Sub_Container(fuda4, fuda_icon4),
                Spacer(),
                My_Sub_Container(fuda5, fuda_icon5),
                Spacer(),
                My_Sub_Container(fuda6, fuda_icon6),
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
