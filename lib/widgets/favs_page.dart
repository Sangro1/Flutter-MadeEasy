import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class favsPage extends StatelessWidget {
  const favsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite'),
        // actions: [ElevatedButton(onPressed: (){}, child: Icon(Icons.settings_input_component),
        // )],
      ),
     body: Container(
        child: Center(
          child: Text('No favorites yet', style: TextStyle(fontSize:30 ),),
        ),
     ),
    );
  }
}