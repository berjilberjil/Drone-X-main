import 'package:dronex/utilities.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home',style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueAccent,
              ),
              child: Text(
                'DroneX',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                // Navigate to Home
              },
            ),
            ListTile(
              title: const Text('Control'),
              onTap: () {
                // Navigate to Control
              },
            ),
            ListTile(
              title: const Text('Settings'),
              onTap: () {
                // Navigate to Settings
              },
            ),
            ListTile(
              title: const Text('More'),
              onTap: () {
                // Navigate to More
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Start Drone
              },
              child: const Text('Start Drone'),
            ),
            ElevatedButton(
              onPressed: () {
                // Stop Drone
              },
              child: const Text('Stop Drone'),
            ),
            ElevatedButton(
              onPressed: () {
                // View Drone Status
              },
              child: const Text('View Drone Status'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: _currentIndex == 0 ? 30 : 24,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.stream_sharp,
              size: _currentIndex == 1 ? 30 : 24,
            ),
            label: 'Control',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings_outlined,
              size: _currentIndex == 2 ? 30 : 24,
            ),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.more_vert_outlined,
              size: _currentIndex == 3 ? 30 : 24,
            ),
            label: 'More',
          ),
        ],
      ),
    );
  }
}
