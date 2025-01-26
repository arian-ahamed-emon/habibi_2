import 'package:flutter/material.dart';
import 'package:habbibi_2/views/navigation/commaunity_screen.dart';
import 'package:habbibi_2/views/navigation/game_center_screen.dart';
import 'package:habbibi_2/views/navigation/home_screen.dart';
import 'package:habbibi_2/views/navigation/profile_screen.dart';
import 'package:habbibi_2/views/rooms/room_screen.dart';
import 'package:habbibi_2/widgets/screen_background.dart';

class MainBottomNavbarScreen extends StatefulWidget {
  const MainBottomNavbarScreen({super.key});

  @override
  State<MainBottomNavbarScreen> createState() => _MainBottomNavbarScreenState();
}

class _MainBottomNavbarScreenState extends State<MainBottomNavbarScreen> {
  int _selectedIndex = 2;
  List<Widget> _screens = [
    CommaunityScreen(),
    GameCenterScreen(),
    HomeScreen(),
    RoomScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(child: _screens[_selectedIndex]),
      bottomNavigationBar: NavigationBar(
         indicatorColor: Colors.white10,
        destinations: [
          NavigationDestination(
            icon: CircleAvatar(
              radius: 22,
              backgroundColor: Colors.black38,
              backgroundImage: AssetImage(
                'assets/icons/persons.png',
              ),
            ),
            label: '',
          ),
          NavigationDestination(
            icon: CircleAvatar(
              radius: 22,
              backgroundColor: Colors.black38,
              backgroundImage: AssetImage(
                'assets/icons/game.png',
              ),
            ),
            label: '',
          ),
          NavigationDestination(
            icon: CircleAvatar(
              radius: 22,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage(
                'assets/icons/home.png',
              ),
            ),
            label: '',
          ),
          NavigationDestination(
            icon: CircleAvatar(
              radius: 22,
              backgroundColor: Colors.black38,
              backgroundImage: AssetImage(
                'assets/icons/chat_room.png',
              ),
            ),
            label: '',
          ),
          NavigationDestination(
            icon: CircleAvatar(
              radius: 22,
              backgroundColor: Colors.black38,
              backgroundImage: AssetImage(
                'assets/icons/person.png',
              ),
            ),
            label: '',
          ),
        ],
        selectedIndex: _selectedIndex,
        onDestinationSelected: (int index) {
          _selectedIndex = index;
          setState(() {});
        },
        backgroundColor: Color(0xFF91D7E3),
      ),
    );
  }
}
