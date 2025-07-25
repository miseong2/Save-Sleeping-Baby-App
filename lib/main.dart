import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Save Sleeping Baby',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
      ),
      home: const MyHomePage(title: 'Save Sleeping Baby'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      
      _counter++;
    });
  }

  Widget _roundedSquareButton(String label, IconData icon) {
    return SizedBox(
      width: 150,
      height: 150,
      child: ElevatedButton(
        onPressed: () {
          // 버튼 눌렀을 때 동작
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20), // 둥근 모서리
          ),
          backgroundColor: const Color.fromARGB(255, 112, 160, 183),
          foregroundColor: const Color.fromARGB(255, 249, 251, 251),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 60),
            const SizedBox(height: 8),
            Text(label, style: TextStyle(fontSize: 17)),
          ],
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [

      //       Padding(
      //         padding: const EdgeInsets.only(top: 20),
      //         child: Image.asset(
      //           'assets/babyicon.png',
      //           height: 200,
      //         ),
      //       ),

      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:[
            Image.asset(
              'assets/babyicon.png',
              height: 200,
            ),


            const SizedBox(height: 60),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _roundedSquareButton('실시간 영상', Icons.camera_alt),
                const SizedBox(width: 20),
                _roundedSquareButton('블루투스 연결', Icons.bluetooth),
              ],
            ),
            const SizedBox(height: 20),

            Row(
              mainAxisAlignment:  MainAxisAlignment.center,
              children: [
                _roundedSquareButton('설정', Icons.settings),
                const SizedBox(width: 20),
                _roundedSquareButton('전원 끄기', Icons.power_settings_new),
              ],
            ),
          ],
        ),
      ),

      
    );
  }
}
