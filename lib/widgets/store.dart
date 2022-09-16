import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class storeBarWidget extends StatelessWidget {
  const storeBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          bottom: TabBar(
            indicatorWeight:2,indicatorColor:Colors.white,
            tabs:[
              Tab(
                // icon : Icon(
                //   Icons.chat,
                // ),
                text: 'XTRA',
              ),
              Tab(
                //   icon: Icon(
                //   Icons.chat_bubble,
                // ),
                text: 'Unlimited',
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          Container(
            child: Center(
              child: Text('XTRA', style: TextStyle(fontSize:30 ),),
            ),),
          Container(
            child: Center(
              child: Text('Unlimited', style: TextStyle(fontSize:30 ),),
            ),
          ),

        ],),

      ),
    );
  }
}