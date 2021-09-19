import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:habittracker/screens/calendar_screen.dart';
import 'package:habittracker/screens/timer_screen.dart';
import 'home_screen.dart';

import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class TabsScreen extends StatefulWidget {
  static const routeName = '/tabs_screen';

  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  // int _selectedIndex = 0;

  // static const List<Widget> _screens = <Widget>[
  //   HomeScreen(),
  //   CalendarScreen(),
  //   TimerScreen()
  // ];

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  final PersistentTabController? _controller =
      PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [HomeScreen(), CalendarScreen(), TimerScreen()];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.home),
        title: ("Home"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.calendar),
        title: ("Calendar"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.timer),
        title: ("Timer"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: Center(
    //     child: _screens[_selectedIndex],
    //   ),
    //   bottomNavigationBar: BottomNavigationBar(
    //       currentIndex: _selectedIndex,
    //       onTap: _onItemTapped,
    //       selectedItemColor: Colors.blueAccent,
    //       items: const <BottomNavigationBarItem>[
    //         BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    //         BottomNavigationBarItem(
    //             icon: Icon(Icons.calendar_today), label: 'Calendar'),
    //         BottomNavigationBarItem(icon: Icon(Icons.timer), label: 'Timer'),
    //       ]),
    // );

    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      navBarStyle: NavBarStyle.style13,
      items: _navBarsItems(),
      handleAndroidBackButtonPress: true, 
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      popActionScreens: PopActionScreensType.all,
      popAllScreensOnTapOfSelectedTab: true,
    );
  }
}
