import 'package:chatui/src/providers/providers.dart';
import 'package:chatui/src/states/settings_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingScreen extends StatefulWidget {
  static const urlRoute = "/SettingsScreen";
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  late final Settings theme;
  late bool isDark;
  @override
  void initState() {
    theme = context.read(settingNotifierProvider);
    isDark = !theme.isLightMode;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('Dark Mode : '),
        Switch(
          value: isDark,
          onChanged: (value) {
            setState(() {
              theme.isLightMode
                  ? theme.setTheme(ThemeMode.dark)
                  : theme.setTheme(ThemeMode.light);
            });
            isDark = !isDark;
          },
        )
      ],
    );
  }
}
