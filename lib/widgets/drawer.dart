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
    return DefaultTabController(
        initialIndex: 2,
        length: 3,
        child:
        Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Browse'),
          leading: IconButton(
            icon: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.grey,
              size: 30,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.remove_red_eye), onPressed: () {}),
          IconButton(icon: Icon(Icons.settings), onPressed: () {}),

        ],


        bottom: TabBar(
          indicatorWeight:4,indicatorColor:Colors.white,
          tabs:[
            Tab(
              // icon : Icon(
              //   Icons.chat,
              // ),
              text: 'Nearby',
            ),
            Tab(
              //   icon: Icon(
              //   Icons.chat_bubble,
              // ),
              text: 'Fresh',
            ),
            Tab(
              // icon: Icon(
              //   Icons.call,
              // ),
              text: 'Explore',

            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.black87,
          child: ListView(
            children: <Widget> [
              DrawerHeader(
                    padding: EdgeInsets.all(5),
                  child: ListView(
                      children: [
                        Container(
                          width:200,
                        height:200,
                       child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                          'https://avatars.githubusercontent.com/u/87020382?s=400&u=fed6383984f3e8b50dd6c30eddc6129525196e6a&v=4'
                        ),
                       ),
                        ),
                      SizedBox(width: 15,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Bhupesh Chouhan',
                          style:TextStyle(fontSize: 18),
                          ),
                          Text('Flutter Developer'),
                        ],
                      ),
                    ],),
                  ),
              SizedBox(height: 15,),
              ListTile(
                leading: Icon(Icons.edit),
                title: Text('Edit Profile'),
              ),
              ListTile(
                leading: Icon(Icons.photo_album),
                title: Text('My Album'),
              ),
              ListTile(
                leading: Icon(Icons.note_alt),
                title: Text('Community Guidelines'),
              ),
          ],
          ),
        ),
    // body: Center(child: Text('Hello'),),
      ),
          body: TabBarView(children: [
              Container(
        child: Center(
          child: Text('Browse profiles anywhere in the world', style: TextStyle(fontSize:20),),
        ),),
    ],),
        ),
    );
  }
}
