import 'package:flutter/material.dart';

class InboxBarWidget extends StatelessWidget {
  const InboxBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 2,
        length: 3,
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        // actions: [ElevatedButton(onPressed: (){}, child: Icon(Icons.settings_input_component),
        // )],
        // backgroundColor: Colors.black87,
        title: Text('Inbox'),
        bottom: TabBar(
          indicatorWeight:4,indicatorColor:Colors.white,
          tabs:[
           Tab(
             // icon : Icon(
             //   Icons.chat,
             // ),
             text: 'Messages',
           ),
          Tab(
          //   icon: Icon(
          //   Icons.chat_bubble,
          // ),
            text: 'Taps',
          ),
          Tab(
            // icon: Icon(
            //   Icons.call,
            // ),
            text: 'Albums',
          ),
        ],
        ),
      ),
          body: TabBarView(children: [
            Container(
              child: Center(
                child: Text('No messages yet', style: TextStyle(fontSize:30 ),),
              ),),
            Container(
              child: Center(
                child: Text('No messages yet', style: TextStyle(fontSize:30 ),),
              ),
            ),
            Container(
              child: Center(
                child: Text('Create album', style: TextStyle(fontSize:30 ),),
              ),
            ),
          ],),

    ),
    );
  }
}
