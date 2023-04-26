import 'package:flutter/material.dart';

class document_page extends StatelessWidget {
  @override
  build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: NetworkImage(
              'https://knaebrbelwfyrznszyyq.supabase.co/storage/v1/object/public/test/elements/background/document_background.jpeg'),
          fit: BoxFit.cover,
        )),
      ),
    );
  }
}
