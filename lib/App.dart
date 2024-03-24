import 'package:flutter/material.dart';
import 'package:sber_screen/Layout.dart';
import 'package:sber_screen/pages/Profile.dart';
import 'package:sber_screen/pages/Settings.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const Layout(
        titles: ["Профиль", "Настройки"],
        child: TabBarView(
          children: [
            TabBarProfile(),
            TabBarSettings(),
          ],
        ));
  }
}
