import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grinder/store.dart';
import 'package:grinder/tabBar.dart';

import 'drawer.dart';
import 'favs_page.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedindex = 0;
  PageController pageController = PageController();

  void onTapped(int index){
    setState((){
      selectedindex = index;
    });pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Bottom Nav') ,
      //
      // ),
      body: PageView(
        controller: pageController,
        children: [
          DrawerWidget(),
          InboxBarWidget(),
          favsPage(),
          storeBarWidget(),
          // AlertWidget(),
          // DismissibleWidget(),
          // RowsCols(),
          // SnackBArWidget(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
            label: 'Browse',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Faves',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.storefront_outlined),
            label: 'Faves',
          ),
        ],
        currentIndex: selectedindex,
        selectedItemColor: Colors.yellow,
        unselectedItemColor:Colors.grey ,
        onTap: onTapped,
      ),
    );
  }
}
