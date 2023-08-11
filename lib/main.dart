import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: const HomeScreen(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 99, 179, 233)),
        
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const _textStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const _widgetOptions = <Widget>[
    Text(
      'Index 0',
      style: _textStyle,
    ),
    Text(
      'Index 1',
      style: _textStyle,
    ),
    Text(
      'Index 2',
      style: _textStyle,
    ),
    Text(
      'Index 3',
      style: _textStyle,
    ),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final isLargeScreen = MediaQuery.sizeOf(context).width > 400;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      drawer: isLargeScreen
          ? null
          : Drawer(
              child: Column(
                children: [
                  ListTile(
                    title: const Text('Home'),
                    onTap: () {
                      setState(() {
                        _currentIndex = 0;
                      });
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text('Business'),
                    onTap: () {
                      setState(() {
                        _currentIndex = 1;
                      });
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text('Feed'),
                    onTap: () {
                      setState(() {
                        _currentIndex = 2;
                      });
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text('Setting'),
                    onTap: () {
                      setState(() {
                        _currentIndex = 3;
                      });
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
      bottomNavigationBar: isLargeScreen
          ? null: BottomNavigationBar(
              backgroundColor: Theme.of(context).primaryColor,
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.business),
                  label: 'Business',
                ),
                BottomNavigationBarItem(icon: Icon(Icons.feed), label: 'Feed'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: 'Setting'),
              ],
              currentIndex: _currentIndex,
              selectedItemColor: Colors.amber[300],
              onTap: (value) {
                setState(() {
                  _currentIndex = value;
                });
              },
            )
          ,
      body: Center(
        child: _widgetOptions[_currentIndex],
      ),
    );
  }
}