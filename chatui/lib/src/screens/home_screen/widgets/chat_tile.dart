import 'dart:isolate';

// import 'package:chatui/src/navigation/routes.gr.dart';
// import 'package:chatui/src/screens/home_screen/widgets/chat_page.dart';

import 'package:chatui/src/screens/home_screen/widgets/dummy_data.dart';
import 'package:flutter/material.dart';
// import 'package:auto_route/auto_route.dart';

Future<void> createIsolate() async {
  print("started");
  ReceivePort port = ReceivePort();
  Isolate.spawn(cal, port.sendPort);
  SendPort portsend = await port.elementAt(0);

  portsend.send("hello from outside");
  port.listen((message) {
    print(message is String ? message : "");
  });
}

Future<void> cal(SendPort portsend) async {
  ReceivePort port = ReceivePort();
  portsend.send(port.sendPort);
  print(await port.first);
  portsend.send("hello from inside");
}

class ChatTile extends StatelessWidget {
  final User user;
  const ChatTile({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () async {
        // context.navigateTo(ChatPageRoute(userId: user.name.toString()));
        // await createIsolate();
        print("dsaf");
      },
      title: Text(user.name),
      subtitle: Text(user.messages.last),
      leading: const CircleAvatar(
        child: Icon(Icons.ac_unit),
      ),
    );
  }
}
