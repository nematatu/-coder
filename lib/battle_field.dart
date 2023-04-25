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
  const battle_field({
    Key? key,
    required this.value,
    required this.icon,
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

  @override
  void initState() {
    super.initState();
    image_name = widget.value;
    view_icon = widget.icon;
  }

  build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            MyContainer(image_name, view_icon),
            /*ElevatedButton(
              onPressed: () {
                setState(() {
                  image_name = 'GitHub';
                  MyContainer(image_name);
                });
              },
              child: Icon(Icons.airline_seat_legroom_extra_rounded),
            ),*/
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
