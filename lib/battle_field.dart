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
                My_Sub_Container(fuda0, fuda_icon0),
                Spacer(),
                My_Sub_Container(fuda1, fuda_icon1),
                Spacer(),
                My_Sub_Container(fuda2, fuda_icon2),
              ],
            ),
            /*TextField(
              controller: _controller,
            ),*/
            Text(StringData0),
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

Container My_Sub_Container(String Sub_imageName, String Sub_view_icon) {
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
