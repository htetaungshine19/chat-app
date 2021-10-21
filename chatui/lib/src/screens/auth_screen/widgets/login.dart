import 'package:chatui/src/providers/providers.dart';
import 'package:chatui/src/states/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final key = GlobalKey<FormState>();
  final formValues = {};

  bool justRegistered = false;

  @override
  void initState() {
    justRegistered = context.read(authStateNotifierProvider).maybeWhen(
      loginState: (justRegistered) {
        if (justRegistered != null) {
          return true;
        } else {
          return false;
        }
      },
      orElse: () {
        return false;
      },
    );
    if (justRegistered) {
      Future.delayed(const Duration(milliseconds: 2000)).then((value) {
        setState(() {
          justRegistered = false;
        });
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: key,
      child: Column(
        children: [
          const Spacer(),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Login",
            style: TextStyle(fontSize: 28),
          ),
          const SizedBox(
            height: 30,
          ),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
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
            child: justRegistered
                ? const Text(
                    'Registered Successfully',
                    style: TextStyle(color: Colors.green),
                  )
                : const SizedBox(),
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(hintText: "Email"),
            textInputAction: TextInputAction.next,
            onSaved: (value) {
              formValues['email'] = value;
            },
            // onTap: () async {
            //   var value = await Navigator.of(context).push(PageRouteBuilder(
            //     opaque: false,
            //     barrierColor: Colors.black54,
            //     pageBuilder: (context, animation, secondaryAnimation) {
            //       return const TestInputWidget();
            //     },
            //   ));
            //   print(value);
            // },
          ),
          const SizedBox(
            height: 30,
          ),
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.done,
            obscureText: true,
            decoration: const InputDecoration(hintText: "Password"),
            onSaved: (value) {
              formValues['password'] = value;
            },
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            child: const Text("Login"),
            onPressed: () {
              key.currentState!.save();
              if (formValues['email'] != null &&
                  formValues['password'] != null) {
                context
                    .read(authStateNotifierProvider.notifier)
                    .login(formValues['email'], formValues['password']);
              }
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                child: const Text("Register"),
                onPressed: () {
                  context
                      .read(authStateNotifierProvider.notifier)
                      .switchPage(page.register);
                },
              ),
              TextButton(
                child: const Text("Forget Password?"),
                onPressed: () {
                  context
                      .read(authStateNotifierProvider.notifier)
                      .switchPage(page.forgetPassword);
                },
              ),
            ],
          ),
          const Spacer()
        ],
      ),
    );
  }
}
