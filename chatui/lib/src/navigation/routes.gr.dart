// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i7;

import '../screens/auth_screen/auth_screen.dart' as _i1;
import '../screens/home_screen/home_screen.dart' as _i2;
import '../screens/home_screen/widgets/chat_list.dart' as _i6;
import '../screens/home_screen/widgets/chat_page.dart' as _i3;
import '../screens/settings_screen/settings_screen.dart' as _i5;
import 'routes.dart' as _i8;

class AppRoute extends _i4.RootStackRouter {
  AppRoute([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    AuthScreenRoute.name: (routeData) {
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.AuthScreen(),
          transitionsBuilder: _i8.defaultNavAnimation,
          opaque: true,
          barrierDismissible: false);
    },
    HomeScreenRoute.name: (routeData) {
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.HomeScreen(),
          transitionsBuilder: _i8.defaultNavAnimation,
          opaque: true,
          barrierDismissible: false);
    },
    ChatPageRoute.name: (routeData) {
      final pathParams = routeData.pathParams;
      final args = routeData.argsAs<ChatPageRouteArgs>(
          orElse: () =>
              ChatPageRouteArgs(userId: pathParams.getString('userId')));
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: _i3.ChatPage(key: args.key, userId: args.userId),
          transitionsBuilder: _i8.defaultNavAnimation,
          opaque: true,
          barrierDismissible: false);
    },
    TScreenMain.name: (routeData) {
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.EmptyRouterPage(),
          transitionsBuilder: _i8.defaultNavAnimation,
          opaque: true,
          barrierDismissible: false);
    },
    SettingScreenRoute.name: (routeData) {
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.SettingScreen(),
          transitionsBuilder: _i8.defaultNavAnimation,
          opaque: true,
          barrierDismissible: false);
    },
    ChatListScreenRoute.name: (routeData) {
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i6.ChatListScreen(),
          transitionsBuilder: _i8.defaultNavAnimation,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(AuthScreenRoute.name, path: '/'),
        _i4.RouteConfig(HomeScreenRoute.name, path: '/homeScreen', children: [
          _i4.RouteConfig(TScreenMain.name,
              path: '',
              children: [_i4.RouteConfig(ChatListScreenRoute.name, path: '')]),
          _i4.RouteConfig(SettingScreenRoute.name, path: 's')
        ]),
        _i4.RouteConfig(ChatPageRoute.name, path: 'chatpage/:userId')
      ];
}

/// generated route for [_i1.AuthScreen]
class AuthScreenRoute extends _i4.PageRouteInfo<void> {
  const AuthScreenRoute() : super(name, path: '/');

  static const String name = 'AuthScreenRoute';
}

/// generated route for [_i2.HomeScreen]
class HomeScreenRoute extends _i4.PageRouteInfo<void> {
  const HomeScreenRoute({List<_i4.PageRouteInfo>? children})
      : super(name, path: '/homeScreen', initialChildren: children);

  static const String name = 'HomeScreenRoute';
}

/// generated route for [_i3.ChatPage]
class ChatPageRoute extends _i4.PageRouteInfo<ChatPageRouteArgs> {
  ChatPageRoute({_i7.Key? key, required String userId})
      : super(name,
            path: 'chatpage/:userId',
            args: ChatPageRouteArgs(key: key, userId: userId),
            rawPathParams: {'userId': userId});

  static const String name = 'ChatPageRoute';
}

class ChatPageRouteArgs {
  const ChatPageRouteArgs({this.key, required this.userId});

  final _i7.Key? key;

  final String userId;
}

/// generated route for [_i4.EmptyRouterPage]
class TScreenMain extends _i4.PageRouteInfo<void> {
  const TScreenMain({List<_i4.PageRouteInfo>? children})
      : super(name, path: '', initialChildren: children);

  static const String name = 'TScreenMain';
}

/// generated route for [_i5.SettingScreen]
class SettingScreenRoute extends _i4.PageRouteInfo<void> {
  const SettingScreenRoute() : super(name, path: 's');

  static const String name = 'SettingScreenRoute';
}

/// generated route for [_i6.ChatListScreen]
class ChatListScreenRoute extends _i4.PageRouteInfo<void> {
  const ChatListScreenRoute() : super(name, path: '');

  static const String name = 'ChatListScreenRoute';
}
