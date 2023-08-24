import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone/src/features/screens/pages/add_stories.dart';
import 'package:twitter_clone/src/features/screens/pages/favourite_page.dart';
import 'package:twitter_clone/src/features/screens/pages/home_page.dart';
import 'package:twitter_clone/src/features/screens/pages/profile_page.dart';
import 'package:twitter_clone/src/features/screens/pages/search_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int currentIndex = 0;
  void selectIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectIndex,
        currentIndex: currentIndex,
        selectedItemColor: Colors.green,
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: const IconThemeData(color: Colors.green),
        selectedLabelStyle: const TextStyle(color: Colors.white),
        items: [
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: ''),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(
                    width: 0.5,
                    color: Colors.white,
                  ),
                ),
                child: const Icon(
                  CupertinoIcons.add,
                ),
              ),
              label: ''),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border_outlined,
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: CircleAvatar(

              maxRadius: 15,
            ),
            label: '',
          ),
        ],
      ),
      body: IndexedStack(
        index: currentIndex,
        children: const [
          HomeScreen(),
          SearchPage(),
          AddStories(),
          FavouritePage(),
          ProfilePage(),
        ],
      ),
    );
  }
}
