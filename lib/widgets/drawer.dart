import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return
      // DefaultTabController(
      //   initialIndex: 2,
      //   length: 3,
      //   child:
        Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text('Browse'),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.black87,
          child: ListView(
            children: [
              DrawerHeader(
                    padding: EdgeInsets.all(10),
                  child: Center(
                    child: Row(children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                          'https://avatars.githubusercontent.com/u/87020382?s=400&u=fed6383984f3e8b50dd6c30eddc6129525196e6a&v=4'
                        ),),
                      SizedBox(width: 10,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Bhupesh Chouhan',
                          style:TextStyle(fontSize: 18),
                          ),
                          Text('Flutter Developer'),
                        ],),
                    ],),
                  ),
              ),
              ListTile(
                leading: Icon(Icons.folder),
                title: Text('My Files'),
              ),
              ListTile(
                leading: Icon(Icons.group),
                title: Text('My Files'),
              ),
              ListTile(
                leading: Icon(Icons.star),
                title: Text('My Files'),
              ),
              ListTile(
                leading: Icon(Icons.delete),
                title: Text('My Files'),
              ),
              ListTile(
                leading: Icon(Icons.upload),
                title: Text('Upload'),
              ),
          ],
          ),
        ),
      ),
          body: Center(child: Text('Hello'),),



    );
  }
}
