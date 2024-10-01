import 'package:chatbot_flutter/pages/main/chat/chat_page.dart';
import 'package:chatbot_flutter/pages/main/contacts/contacts_page.dart';
import 'package:flutter/material.dart';
import '../../pages/main/category/category_page.dart';
import '../../pages/main/social/social_page_navigation .dart';
import '../../pages/main/individual/individual_page.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
   _BottomNavigationBarWidgetState createState() => _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOption = <Widget>[
   ChatPageNavigation(),
   ContactsPageNavigation(),
   CategoryPageNavigation(),
   SocialPageNavigation(),
   IndividualPageNavigation(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOption.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Tin nhắn',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_emergency),
            label: 'Danh bạ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Khám phá',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.lock_clock),
            label: 'Nhật ký',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Cá nhân',
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 0, 0, 0),
        unselectedItemColor: const Color.fromARGB(255, 116, 116, 116),
        onTap: _onItemTapped,
         showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
    );
  }
}
