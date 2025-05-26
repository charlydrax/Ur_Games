import 'package:flutter/material.dart';

import 'screen/add_friend.dart';
import 'screen/add_game.dart';
import 'screen/friend.dart';
import 'screen/friends_list.dart';
import 'screen/home.dart';
import 'screen/login.dart';
import 'screen/library.dart';
import 'screen/signup.dart';
import 'screen/profil.dart';
import 'screen/settings.dart';


class Content extends StatefulWidget{
  const Content({super.key});

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  final List<Widget> _screenList = const [
    Home(),
    Library(),
    FriendsList(),
    AddGame(),
    AddFriend(),
    Friend(),
    Login(),
    SignUp(),
    Profil(),
    Settings(),
  ];
  int _currentScreen = 0;

  @override
  Widget build(BuildContext contect) {
    return Scaffold( 
      appBar: AppBar(),
      body: _screenList[_currentScreen],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 35,
        selectedItemColor: Color(0xFFF054DC),
        unselectedItemColor: Colors.white,
        currentIndex: _currentScreen,
        onTap: (index) {
          setState(() {
            _currentScreen = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.library_books), label: 'Library'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Friends'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add Game'),
          BottomNavigationBarItem(icon: Icon(Icons.person_add), label: 'Add Friend'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Friend'),
          BottomNavigationBarItem(icon: Icon(Icons.login), label: 'Login'),
          BottomNavigationBarItem(icon: Icon(Icons.app_registration), label: 'Sign Up'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Profil'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}