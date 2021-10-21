// import 'package:chatui/src/navigation/routes.gr.dart';
import 'package:chatui/src/screens/home_screen/widgets/chat_tile.dart';
import 'package:chatui/src/screens/home_screen/widgets/dummy_data.dart';
// import 'package:chatui/src/screens/home_screen/widgets/chat_page.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ChatTile(user: dData[index]);
      },
      itemCount: dData.length,
    );
  }
}
