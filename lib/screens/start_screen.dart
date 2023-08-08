import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'KC TV',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Tarjetas de recomendaciones',
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.music_video),
            label: 'Canciones',
            backgroundColor: Color.fromARGB(255, 179, 16, 4),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.album),
            label: 'Albumes',
            backgroundColor: Color.fromARGB(255, 179, 16, 4),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'Bandas',
            backgroundColor: Color.fromARGB(255, 179, 16, 4),
          ),
        ],
        backgroundColor: Colors.amber,
        onTap: null,
      ),
    );
  }
}
