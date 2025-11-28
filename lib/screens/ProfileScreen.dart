import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../main.dart';

class ProfileScreen extends StatefulWidget{
  final String title;
  const ProfileScreen({super.key, required this.title});


  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}



class _ProfileScreenState extends State<ProfileScreen>{
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
        ],
      ),
    );
  }
}