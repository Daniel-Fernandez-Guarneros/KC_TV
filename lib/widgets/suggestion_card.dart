import 'package:flutter/material.dart';
import 'package:kc_tv_app/screens/player_screen.dart';

class SuggestionCard extends StatelessWidget {
  const SuggestionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[_recomendation(context)],
      ),
    );
  }

  Widget _recomendation(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          width: 30,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PlayerScreen(
                  url:
                      "https://www.youtube.com/watch?v=Ud2eziOjjTo&ab_channel=MyChemicalRomance",
                ),
              ),
            );
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: const Image(
                image: AssetImage('assets/images/TheBlackParadeIsDead.jpg'),
                width: 316),
          ),
        ),
        const SizedBox(height: 20.0),
        Column(
          children: [
            SizedBox(
              width: 530,
              height: 80,
              child: Text(
                '  The Black Parade Is Dead!',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            SizedBox(
              width: 490,
              height: 80,
              child: Text(
                "Watch the full concert video for The Black Parade Is Dead! by My Chemical Romance from the Palacio de los Deportes in Mexico City, Mexico and Maxwell's in Hoboken, New Jersey.",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            SizedBox(
              width: 490,
              height: 50,
              child: Text(
                "Banda: My Chemical Romance",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            SizedBox(
              width: 490,
              height: 50,
              child: Text(
                "Duración: 2:15:38",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            SizedBox(
              width: 490,
              height: 50,
              child: Text(
                "Fecha: 7 de Octubre de 2007",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        )
      ],
    );
  }
}
