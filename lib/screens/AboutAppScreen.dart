


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class AboutAppScreen extends StatefulWidget {
  final String title;
  const AboutAppScreen({super.key, required this.title});

  @override
  State<AboutAppScreen> createState() => _AboutAppScreenState();
}

class _AboutAppScreenState extends State<AboutAppScreen> {
  late List<int> state;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    state = ModalRoute.of(context)?.settings.arguments as List<int>? ?? [0, 16];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            NavigationButtons(state: state),
            const SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  'Студенту необходимо подготовить приложение, позволяющее производить смену контента '
                      'на экране. Приложение должно содержать минимум 5 отдельных виджета с контентом экрана, а '
                      'также они должны быть все связаны логически.\n\n'
                      'Студенту требуется выполнить все пункты в плане практической работы с '
                      'конспектированием своих действий, а также фотофиксацией контрольных точек в отчете о '
                      'практической работе.',
                  style: TextStyle(fontSize: state[1].toDouble()),
                  textAlign: TextAlign.justify,), ),
            ),
          ],
        ),
      ),
    );
  }
}