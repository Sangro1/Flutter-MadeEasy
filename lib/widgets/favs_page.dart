import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class favsPage extends StatelessWidget {
  const favsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black87,
        title: Text('Favorite'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.settings), onPressed: () {}),
        ],
      ),
     body: Container(
        child: Center(
          child: Text('No favorites yet', style: TextStyle(fontSize:30 ),),
        ),
     ),
    );
  }
}