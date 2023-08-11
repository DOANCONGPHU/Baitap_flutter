import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) { 
    return  const MaterialApp( 
      title: 'Material App',
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final isLargeScreen= MediaQuery.sizeOf(context).width>480;
    return SafeArea(
      child: isLargeScreen ?const HaiScreen() : Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 216, 30, 170),
            title: const Text('HOME'),
          ),

          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SecondScreen(),
                      ));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                child: const Text(
                  'Ten: Cong Phu 1',
                  style: TextStyle(color: Colors.green, fontSize: 20),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ThirdScreen(),
                  ));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                child: const Text(
                  'Ten: Cong Phu 2',
                  style: TextStyle(color: Colors.green, fontSize: 20),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FourScreen(),
                      ));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                child: const Text(
                  'Ten: Cong Phu 3',
                  style: TextStyle(color: Colors.green, fontSize: 20),
                ),
              ),
            ],
          )),
    );
  }
}
class HaiScreen extends StatefulWidget {
  const HaiScreen({super.key});

  @override
  State<StatefulWidget> createState() => _HaiScreen();
}
class _HaiScreen extends State<StatefulWidget> {
  static const _widgetOptions = <Widget>[
    Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            child: Text("Ten: John Doe 1",textAlign: TextAlign.center,),
          ),
          SizedBox(
            child: Text("Trang thai: Online",textAlign: TextAlign.center,),
          ),
          SizedBox(
            child: Text("Intro: Do anthing what you like will always make you happy..",),
          )
        ],
      ),Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            child: Text("Ten: John Doe 2",textAlign: TextAlign.center,),
          ),
          SizedBox(
            child: Text("Trang thai: Online",textAlign: TextAlign.center,),
          ),
          SizedBox(
            child: Text("Intro: Do anthing what you like will always make you happy..",),
          )
        ],
      ),Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            child: Text("Ten: John Doe 3",textAlign: TextAlign.center,),
          ),
          SizedBox(
            child: Text("Trang thai: Online",textAlign: TextAlign.center,),
          ),
          SizedBox(
            child: Text("Intro: Do anthing what you like will always make you happy..",),
          )
        ],
      ),
  ];
  int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fullter Demo"),
        backgroundColor: const Color.fromARGB(255, 216, 30, 170),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  onPressed: () {
                     setState(() {
                        _currentIndex = 0;
                      });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  child: const Text(
                    'Ten: Cong Phu 1',
                    style: TextStyle(color: Colors.green,),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                     setState(() {
                        _currentIndex = 1;
                      }); 
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  child: const Text(
                    'Ten: Cong Phu 2',
                    style: TextStyle(color: Colors.green,),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                        _currentIndex = 2;
                      });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shadowColor: Colors.white,
                  ),
                  child: const Text(
                    'Ten: Cong Phu 3',
                    style: TextStyle(color: Colors.green,),
                  ),
                ),
              ],
            ),
          ),
           Expanded(
              flex: 2,
              child: Container(
                height: double.infinity,
                  color: const Color.fromARGB(255, 219, 216, 216),
                  child: _widgetOptions[_currentIndex],
              )
          )
        ],
      ),
    );
  }
}

class SecondScreen extends StatelessWidget{
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, 
        icon: const Icon(Icons.arrow_back_ios_new)),
        centerTitle: true,
        title: const Text("Cong phu 1",), 
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            child: Text("Ten: John Doe 1",textAlign: TextAlign.center,),
          ),
          SizedBox(
            child: Text("Trang thai: Online",textAlign: TextAlign.center,),
          ),
          SizedBox(
            child: Text("Intro: Do anthing what you like will always make you happy..",),
          )
        ],
      ),
     );
  }

}

class ThirdScreen extends StatelessWidget{
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, 
        icon: const Icon(Icons.arrow_back_ios_new)),
        centerTitle: true,
        title: const Text("Cong phu 2",),
        
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            child: Text("Ten: John Doe 2",textAlign: TextAlign.center,),
          ),
          SizedBox(
            child: Text("Trang thai: Online",textAlign: TextAlign.center,),
          ),
          SizedBox(
            child: Text("Intro: Do anthing what you like will always make you happy..",),
          )
        ],
      ),
     );
  }
} 

class FourScreen extends StatelessWidget{
  const FourScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, 
        icon: const Icon(Icons.arrow_back_ios_new)),
        centerTitle: true,
        title: const Text("Cong phu 3",),
        
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            child: Text("Ten: John Doe 3",textAlign: TextAlign.center,),
          ),
          SizedBox(
            child: Text("Trang thai: Online",textAlign: TextAlign.center,),
          ),
          SizedBox(
            child: Text("Intro: Do anthing what you like will always make you happy..",),
          )
        ],
      ),
     );
  }

}