


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class MessagesScreen extends StatefulWidget{
  final String title;
  const MessagesScreen({super.key, required this.title});

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen>{
  late List<int> state;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    state = ModalRoute.of(context)!.settings.arguments as List<int>? ?? [0, 16];
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          NavigationButtons(state: state),
          const SizedBox(height: 20),
          Text('Количество сообщений: ${state[0]}', style: TextStyle(fontSize: state[1].toDouble())),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  state[0] += 1;
                });
              },
              child: const Text('Послать сообщение')
          )
        ],
      ),
    );
  }
}

