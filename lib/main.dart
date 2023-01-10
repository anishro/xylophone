import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);
  void playsound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Xylophone',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    playsound(1);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                    minimumSize: const Size(70, 60),
                  ),
                  child: const Text(''),
                ),
                TextButton(
                  onPressed: () {
                    playsound(2);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.orange,
                    minimumSize: const Size(90, 60),
                  ),
                  child: const Text(''),
                ),
                TextButton(
                  onPressed: () {
                    playsound(3);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: (Colors.yellow),
                    minimumSize: const Size(110, 60),
                  ),
                  child: const Text(''),
                ),
                TextButton(
                  onPressed: () {
                    playsound(4);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: (Colors.green),
                    minimumSize: const Size(130, 60),
                  ),
                  child: const Text(''),
                ),
                TextButton(
                  onPressed: () {
                    playsound(5);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    minimumSize: const Size(150, 60),
                  ),
                  child: const Text(''),
                ),
                TextButton(
                  onPressed: () {
                    playsound(6);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.purple,
                    minimumSize: const Size(170, 60),
                  ),
                  child: const Text(''),
                ),
                TextButton(
                  onPressed: () {
                    playsound(7);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.indigo,
                    minimumSize: const Size(190, 60),
                  ),
                  child: const Text(''),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
