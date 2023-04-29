import 'package:flutter/material.dart';

class last_page extends StatefulWidget {
  final int get_point;
  const last_page({Key? key, required this.get_point}) : super(key: key);
  State<last_page> createState() => _last_pageState();
}

class _last_pageState extends State<last_page> {
  int get_point = 0;

  @override
  void initState() {
    super.initState();
    get_point = widget.get_point;
  }

  build(BuildContext context) {
    String rank;
    String comment;
    if (0 <= get_point && get_point <= 1) {
      rank = 'あなたの実力は初段です';
      comment = '基本用語を覚えるようにするといいですね！';
    } else if (2 <= get_point && get_point <= 3) {
      rank = 'あなたの実力は二段です';
      comment = 'もっと上位を目指しましょう';
    }else if (4 <= get_point) {
      rank = 'あなたの実力は名人クラスです';
      comment = '尊敬～';
    }else {
      rank = 'あなたのランクは計算できませんでした';
      comment = '次回は頑張ろう';
    }

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background/result.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                rank,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 30,
                ),
              ),
              Text(
                get_point.toString()+'点',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  fontSize: 60,
                  color: Colors.redAccent,
                ),
              ),
              Text(
                comment,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
