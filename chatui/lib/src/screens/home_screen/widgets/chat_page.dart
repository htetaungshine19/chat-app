import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  final String userId;
  const ChatPage({Key? key, @PathParam('userId') required this.userId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(userId),
      ),
    );
  }
}
