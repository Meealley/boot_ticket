import 'package:boot_tickets/screens/home/home_page.dart';
import 'package:boot_tickets/screens/profile/profile_page.dart';
import 'package:boot_tickets/screens/search/search_page.dart';
import 'package:boot_tickets/screens/tickets/ticket_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  int _currentPage = 0;

  final List<Widget> _pages = <Widget>[
    const HomePage(),
    const SearchPage(),
    const TicketPage(),
    const ProfilePage(),
  ];

  void _onTappedItem(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages[_currentPage],
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: _onTappedItem,
          selectedFontSize: 0,
          unselectedFontSize: 0,
          currentIndex: _currentPage,
          selectedItemColor: Colors.purple,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(AntDesign.home), label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  AntDesign.search1,
                ),
                label: ''),
            BottomNavigationBarItem(icon: Icon(FontAwesome.ticket), label: ''),
            BottomNavigationBarItem(icon: Icon(Ionicons.person), label: ''),
          ]),
    );
  }
}
