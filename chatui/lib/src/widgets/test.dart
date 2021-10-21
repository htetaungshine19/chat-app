import 'dart:ui';

import 'package:flutter/material.dart';

class TestInputWidget extends StatefulWidget {
  const TestInputWidget({Key? key}) : super(key: key);

  @override
  State<TestInputWidget> createState() => _TestInputWidgetState();
}

class _TestInputWidgetState extends State<TestInputWidget> {
  final TextEditingController _c = TextEditingController();
  bool showSendButton = false;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        bool a = true;
        if (_c.text.isNotEmpty) {
          await showDialog(
            context: context,
            builder: (context) {
              return BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
                child: AlertDialog(
                  title: const Text("Discard?"),
                  actions: [
                    TextButton(
                        onPressed: () {
                          a = false;
                          Navigator.pop(context);
                        },
                        child: const Text("Keep Writing")),
                    TextButton(
                        onPressed: () {
                          a = true;
                          Navigator.pop(context);
                        },
                        child: const Text("Discard"))
                  ],
                ),
              );
            },
          );
        }
        return a;
      },
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextField(
                    controller: _c,
                    autofocus: true,
                    onChanged: (value) {
                      if (value.isNotEmpty) {
                        if (!showSendButton) {
                          showSendButton = true;
                          setState(() {});
                        }
                      } else {
                        setState(() {
                          showSendButton = false;
                        });
                      }
                    },
                    onSubmitted: (value) {
                      Navigator.of(context).pop(value);
                    },
                  ),
                ),
                if (_c.text.isNotEmpty)
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context, _c.text);
                      },
                      icon: const Icon(Icons.send))
              ],
            )
          ],
        ),
      ),
    );
  }
}
