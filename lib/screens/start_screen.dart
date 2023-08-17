import 'package:flutter/material.dart';
import 'package:kc_tv_app/widgets/albums_cards.dart';
import 'package:kc_tv_app/widgets/bands_cards.dart';
import 'package:kc_tv_app/widgets/songs_cards.dart';
import 'package:kc_tv_app/widgets/suggestion_card.dart';

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
        leading: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Image.asset('assets/images/icon.png'),
        ),
        title: Text(
          'KC TV',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 70.0,
              child: Text(
                'Recomendado para ti',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            const SuggestionCard(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: const Color.fromARGB(160, 0, 0, 0),
        fixedColor: const Color.fromARGB(160, 0, 0, 0),
        onTap: (value) {
          if (value == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SongsCards()),
            );
          }
          if (value == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AlbumsCards()),
            );
          }
          if (value == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const BandsCards()),
            );
          }
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.music_video,
              color: Color.fromARGB(160, 0, 0, 0),
            ),
            label: ('Canciones'),
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.album,
              color: Color.fromARGB(160, 0, 0, 0),
            ),
            label: 'Albumes',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.music_note,
              color: Color.fromARGB(160, 0, 0, 0),
            ),
            label: 'Bandas',
            backgroundColor: Colors.white,
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 228, 21, 7),
      ),
    );
  }
}
