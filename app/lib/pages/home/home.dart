import 'package:app/pages/home/home_body.dart';
import 'package:app/pages/home/mymusic_body.dart';
import 'package:app/pages/home/playlist_body.dart';
import 'package:app/pages/home/remote_body.dart';
import 'package:app/pages/home/search_body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Karaoke"),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          HomeBodyPage(),
          SearchBodyPage(),
          PlaylistBodyPage(),
          MyMusicBodyPage(),
          RemoteBodyPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Theme.of(context).primaryColor,
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        ],
      ),
    );
  }
}
