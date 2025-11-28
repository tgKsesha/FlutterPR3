import 'package:flutter/material.dart';
import 'package:flutter_pr3/screens/MainScreen.dart';

import 'screens/AboutAppScreen.dart';
import 'screens/MessageScreen.dart';
import 'screens/ProfileScreen.dart';
import 'screens/SettingsScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'практическая работа 3',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeProfileUserPage(title: 'Главный экран'),
        '/profile': (context) => const ProfileScreen(title: 'Профиль'),
        '/settings': (context) => const SettingsScreen(title: 'Настройки'),
        '/messages': (context) => const MessagesScreen(title: 'Сообщения'),
        '/about_app': (context) => const AboutAppScreen(title: 'О приложении'),
      },
    );
  }
}


void NavigateTo(BuildContext context, String route, List<int> state) {
  Navigator.pushNamed(context, route, arguments: state);
}

class NavigationButtons extends StatelessWidget{
  final List<int> state;
  const NavigationButtons({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center,
      children:
      [
        ElevatedButton(onPressed: () { NavigateTo(context, "/", state);  }, child: const Text("Главный экран")),
        ElevatedButton(onPressed: () { NavigateTo(context, "/profile", state);  }, child: const Text("Профиль")),
        ElevatedButton(onPressed: () { NavigateTo(context, "/settings", state); }, child: const Text("Настройки")),
        ElevatedButton(onPressed: () { NavigateTo(context, "/messages", state); }, child: const Text("Сообщения")),
        ElevatedButton(onPressed: () { NavigateTo(context, "/about_app", state); }, child: const Text("О приложении")),
      ],
    );
  }
}








