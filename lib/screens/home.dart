import 'package:flutter/material.dart';
import 'package:totk_tracker/widgets/reusable_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomeScreen> {
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = const Text('Map Page');
    // var activePageTitle = 'Map';

    if (_selectedPageIndex == 1) {
      // final favoriteMeals = ref.watch(favoriteMealsProvider);
      activePage = Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: background(),
        child: const Center(
          child: Text(
            'Your Stats',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
      // activePageTitle = 'Your Stats';
    }

    return Scaffold(
      body: activePage,
      bottomNavigationBar: 
        BottomNavigationBar(
          onTap: _selectPage,
          currentIndex: _selectedPageIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Map'),
            BottomNavigationBarItem(icon: Icon(Icons.insights), label: 'Stats'),
          ],
          backgroundColor: Theme.of(context).colorScheme.surface,
          // backgroundColor: const Color(0xFF13301b).withOpacity(0.1),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white38,
        ),
      //),
    );
  }
}
