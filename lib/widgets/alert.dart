import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertWidget extends StatefulWidget {
  const AlertWidget({Key? key}) : super(key: key);

  @override
  State<AlertWidget> createState() => _AlertWidgetState();
}

class _AlertWidgetState extends State<AlertWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Alert'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showMyDialog(context);
          },
          child: Text('Show Alert'),
        ),
      ),
    );
  }
}

Future<void> _showMyDialog(BuildContext context)async {
  return showDialog<void>(
    context:context,
    barrierDismissible:true,
    builder:(BuildContext context){
      return AlertDialog(
        backgroundColor: Colors.black,
        elevation: 10,
        scrollable: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: Text('AlertDialog title'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('This is a demo alert dialog'),
              Text('Would yo like to approve of this message?'),
            ],
          ),
        ),
        actions:<Widget> [
          TextButton(
              child:Text('Yes'),
              onPressed:(){ Navigator.of(context).pop();},
               ),
          TextButton(
            child: const Text('No'),
            onPressed:(){ Navigator.of(context).pop();},
          ),
        ],
      );
    }
  );
}
