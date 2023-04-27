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
  final String test_icon;
  final String fuda0;
  final String fuda1;
  final String fuda2;
  final String fuda3;
  final String fuda4;
  final String fuda5;
  final String fuda6;

  const battle_field({
    Key? key,
    required this.value,
    required this.icon,
    required this.test_icon,
    required this.fuda0,
    required this.fuda1,
    required this.fuda2,
    required this.fuda3,
    required this.fuda4,
    required this.fuda5,
    required this.fuda6,
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
  String test_icon = '';

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
    test_icon = widget.test_icon;
  }

  build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            controller: _controller,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              /*MyContainer(image_name, view_icon),
              Spacer(),
              My_Sub_Container(fuda0, test_icon),
              Spacer(),
              My_Sub_Container(fuda1, test_icon),
              Spacer(),
              My_Sub_Container(fuda2, test_icon),
            ],
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              My_Sub_Container(fuda3, test_icon),
              Spacer(),
              My_Sub_Container(fuda4, test_icon),
              Spacer(),
              My_Sub_Container(fuda5, test_icon),
              Spacer(),
              My_Sub_Container(fuda6, test_icon),
            ],
          ),*/
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final value = await loadIt();
          _controller.text = value;
        },
        child: Icon(Icons.savings),
      ),
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
