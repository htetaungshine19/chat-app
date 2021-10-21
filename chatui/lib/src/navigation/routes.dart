import 'package:auto_route/auto_route.dart';
import 'package:chatui/src/screens/auth_screen/auth_screen.dart';
import 'package:chatui/src/screens/home_screen/home_screen.dart';
import 'package:chatui/src/screens/home_screen/widgets/chat_list.dart';
import 'package:chatui/src/screens/home_screen/widgets/chat_page.dart';
import 'package:chatui/src/screens/settings_screen/settings_screen.dart';
import 'package:flutter/material.dart';

Widget navAnimation1(context, animation, secondaryAnimation, child) {
  return child;
}

Widget defaultNavAnimation(context, animation, secondaryAnimation, child) {
  return child;
}

@CustomAutoRouter(transitionsBuilder: defaultNavAnimation, routes: [
  AutoRoute(
    path: "/",
    page: AuthScreen,
  ),
  AutoRoute(path: HomeScreen.urlRoute, page: HomeScreen, children: [
    AutoRoute(page: EmptyRouterPage, path: '', name: "TScreenMain", children: [
      AutoRoute(page: ChatListScreen, path: ""),
    ]),
    AutoRoute(page: SettingScreen, path: 's'),
  ]),
  AutoRoute(
    page: ChatPage,
    path: "chatpage/:userId",
  ),
])
class $AppRoute {}
