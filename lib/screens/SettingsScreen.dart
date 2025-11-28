import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../main.dart';

class SettingsScreen extends StatefulWidget{
  final String title;
  const SettingsScreen({super.key, required this.title});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}





class _SettingsScreenState extends State<SettingsScreen>{
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
        children: [
          NavigationButtons(state: state),
          const SizedBox(height: 40),
          Text('Размер шрифта:', style: TextStyle(fontSize:  state[1].toDouble())),
          const SizedBox(height: 20),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if(state[1] > 8) state[1] -= 1;
                      });
                    },
                    child: const Text('-')
                ),
                const SizedBox(width: 20),
                Text(state[1].toString(), style: const TextStyle(fontSize: 18)),
                const SizedBox(width: 20),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        state[1] += 1;
                      });
                    },
                    child: const Text('+')
                ),
              ]
          )
        ],
      ),
    );
  }
}