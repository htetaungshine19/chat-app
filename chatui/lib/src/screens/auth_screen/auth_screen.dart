import 'dart:ui';

import 'package:chatui/src/navigation/routes.gr.dart';
import 'package:chatui/src/screens/auth_screen/widgets/forget_password.dart';
import 'package:chatui/src/states/auth_state.dart';
import 'package:chatui/src/providers/providers.dart';
import 'package:chatui/src/screens/auth_screen/widgets/login.dart';
import 'package:chatui/src/screens/auth_screen/widgets/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:auto_route/auto_route.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);
  static const urlRoute = "/";
  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Widget current = const Login();

  void _showDialog(state, context) {
    showDialog(
      context: context,
      builder: (context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
          child: AlertDialog(
            title: const Text("An Error has occured!"),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Ok"))
            ],
            content: Text(state.message),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: FractionallySizedBox(
        widthFactor: 1.0,
        heightFactor: 1.0,
        child: Consumer(
          builder: (context, watch, child) {
            AuthState state = watch(authStateNotifierProvider);
            // print(state);
            var a = state.when(
              loginState: (String? value) {
                current = const Login();
              },
              registerState: () {
                current = const Register();
              },
              forgetPasswordState: () {
                current = const ForgetPassword();
              },
              loadingState: () {
                return Stack(
                  children: [
                    current,
                    DecoratedBox(
                      decoration:
                          BoxDecoration(color: Colors.black.withOpacity(0.5)),
                      child: const FractionallySizedBox(
                        widthFactor: 1.0,
                        heightFactor: 1.0,
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      ),
                    )
                  ],
                );
              },
              authSuccessfulState: (value) {
                Future.delayed(Duration.zero).then((_) {
                  // Navigator.of(context)
                  //     .pushReplacementNamed(HomeScreen.urlRoute);
                  context.router.replace(const HomeScreenRoute());
                });
              },
              authErrorState: (value) {
                Future.delayed(Duration.zero).then((_) {
                  _showDialog(state, context);
                }).then((_) {
                  if (current is Login) {
                    context
                        .read(authStateNotifierProvider.notifier)
                        .switchPage(page.login);
                  } else if (current is Register) {
                    context
                        .read(authStateNotifierProvider.notifier)
                        .switchPage(page.register);
                  } else if (current is ForgetPassword) {
                    context
                        .read(authStateNotifierProvider.notifier)
                        .switchPage(page.forgetPassword);
                  }
                });
              },
            );
            if (a != null) {
              return a;
            }
            return AnimatedSwitcher(
              transitionBuilder: (child, animation) {
                return FadeTransition(
                  opacity: animation,
                  child: SlideTransition(
                    position: Tween<Offset>(
                      begin: const Offset(0, 1),
                      end: const Offset(0, 0),
                    ).animate(animation),
                    child: child,
                  ),
                );
              },
              duration: const Duration(milliseconds: 500),
              child: current,
            );
          },
        ),
      ),
    );
  }
}
