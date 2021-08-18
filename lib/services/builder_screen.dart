import 'package:flutter/material.dart';
import 'package:travel_app/model/destination_model.dart';
import 'package:travel_app/screens/home/home.dart';
import 'package:travel_app/screens/packages/package_screen.dart';

class BuilderScreen extends StatefulWidget {
  const BuilderScreen({Key? key}) : super(key: key);

  @override
  _BuilderScreenState createState() => _BuilderScreenState();
}

class _BuilderScreenState extends State<BuilderScreen> {
  int _selectedIndex = 0;
  final List<Widget> _screens = <Widget>[
    Home(
      destination: destinations[0],
    ),
    PackageScreen(),
  ];
  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _screens.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list_alt,
            ),
            label: 'Packages',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        selectedFontSize: 13.0,
        unselectedFontSize: 13.0,
      ),
    );
  }
}
