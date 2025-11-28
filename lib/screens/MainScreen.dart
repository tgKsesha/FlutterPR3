
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class HomeProfileUserPage extends StatelessWidget{
  final String title;
  const HomeProfileUserPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final List<int> state = ModalRoute.of(context)!.settings.arguments as List<int>? ?? [0, 16];

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: NavigationButtons(state: state)),
    );
  }
}