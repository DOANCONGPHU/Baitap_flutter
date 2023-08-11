import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: const HomeScreen(),
      routes: {
        'detail1': (context) {
          return const DetailScreen(id: 0);
        }
      },
      onGenerateRoute: (settings) {
        if (settings.name == 'detail') {
          return MaterialPageRoute(
            builder: (context) {
              return DetailScreen(id: (settings.arguments as Map)['id']);
            },
          );
        }
        return null;
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Not found'),
              ),
              body: Center(
                child: Text('Page not found: ${settings.name}'),
              ),
            );
          },
        );
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home App Bar'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
              onPressed: () async {
                final result = await Navigator.of(context)
                    .pushNamed('detail', arguments: {'id': 123});
                debugPrint(result?.toString());
              },
              child: const Text('Go to detail screen')),
          ElevatedButton(
              onPressed: () async {
                final result = await Navigator.of(context)
                    .pushNamed('nothing', arguments: {'id': 123});
                debugPrint(result?.toString());
              },
              child: const Text('Go to unknown screen')),
        ],
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail App Bar'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('$id'),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop('Hello from detail');
              },
              child: const Text('Go back')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Go back')),
        ],
      ),
    );
  }
}
