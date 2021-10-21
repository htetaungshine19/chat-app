import 'package:chatui/src/providers/providers.dart';
import 'package:chatui/src/states/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final key = GlobalKey<FormState>();
  final formValues = {};
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
            "Forget Password",
            style: TextStyle(fontSize: 28),
          ),
          const SizedBox(
            height: 30,
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(hintText: "Email"),
            onSaved: (value) {
              formValues['email'] = value;
            },
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            child: const Text("Submit"),
            onPressed: () {
              key.currentState!.save();
              if (formValues['email'] != null) {
                context
                    .read(authStateNotifierProvider.notifier)
                    .forgetPassword(formValues['email']);
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
                child: const Text("Login"),
                onPressed: () {
                  context
                      .read(authStateNotifierProvider.notifier)
                      .switchPage(page.login);
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
