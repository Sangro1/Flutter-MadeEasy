import 'package:flutter/cupertino.dart';
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
          backgroundColor: Colors.transparent,
          title: Text('Inbox'),
          // leading: IconButton(
          //   icon: Icon(
          //     CupertinoIcons.person_badge_plus_fill,
          //     color: Colors.white,
          //     size: 30,
          //   ),
          //   onPressed: () => Navigator.of(context).pop(),
          // ),
          actions: <Widget>[
            IconButton(icon: Icon(CupertinoIcons.person_add), onPressed: () {}),
            IconButton(icon: Icon(Icons.settings), onPressed: () {}),
          ],
          bottom: TabBar(
            indicatorWeight: 4,
            indicatorColor: Colors.white,
            tabs: [
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
        body: TabBarView(
          children: [
            Container(
              child: Center(
                child: Text(
                  'No messages yet',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Container(
              child: Center(
                child: Text(
                  'No messages yet',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Container(
                child: Container(
                  margin: const EdgeInsets.all(50.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all(width: 1.0, color: Colors.red),
                  ),
                  child: Center(
                    child: IconButton(onPressed: (){}, icon:Icon(CupertinoIcons.lock_fill)),
                  ),

                  ),
                ),
          ],
        ),
      ),
    );
  }
}
