import 'package:chatui/src/providers/providers.dart';
import 'package:chatui/src/states/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
            "Register",
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
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(hintText: "Username"),
            onSaved: (value) {
              formValues['username'] = value;
            },
          ),
          const SizedBox(
            height: 30,
          ),
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            decoration: const InputDecoration(hintText: "Password"),
            onSaved: (value) {
              formValues['password'] = value;
            },
          ),
          const SizedBox(
            height: 30,
          ),
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            decoration: const InputDecoration(hintText: "Confirm Password"),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onSaved: (value) {
              formValues['password1'] = value;
            },
            validator: (value) {
              if (formValues['password'] == value) {
                return null;
              }
              return "Your Password is not the same";
            },
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            child: const Text("Register"),
            onPressed: () {
              key.currentState!.save();
              if (formValues['username'] != null &&
                  formValues['password'] != null &&
                  formValues['password1'] != null &&
                  formValues['email'] != null &&
                  formValues['password'] == formValues['password1']) {
                context.read(authStateNotifierProvider.notifier).register(
                    formValues['email'],
                    formValues['username'],
                    formValues['password'],
                    formValues['password1']);
              }
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                child: const Text("Login"),
                onPressed: () {
                  context
                      .read(authStateNotifierProvider.notifier)
                      .switchPage(page.login);
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
