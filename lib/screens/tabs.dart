
import 'package:flutter/material.dart';
import 'package:totk_tracker/screens/home.dart';
import 'package:totk_tracker/widgets/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});
  
  @override
  State<StatefulWidget> createState() => _TabsScreenState();

}

class _TabsScreenState extends State<TabsScreen> {
  int _drawerIndex = 0;
  String _activePageTitle = 'Home Page';

    static final List<Widget> _drawerOptions = <Widget>[
      const HomeScreen(),
      const Center(child: Text('Quests')),
      const Center(child: Text('Checklists')),
      const Center(child: Text('Settings')),
  ];

  void _selectPage(int index, String name){
    Navigator.pop(context); // close drawer
    // open new page
    setState(() {
      _drawerIndex = index;
      _activePageTitle = name;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text(_activePageTitle)),
      drawer: MainDrawer(onSelectScreen: _selectPage),
      // body: const HomeScreen(),
      body: Center(
        child: _drawerOptions.elementAt(_drawerIndex),
      ),
    );
  }

}