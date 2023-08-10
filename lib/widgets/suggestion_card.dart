import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  const SuggestionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: const Image(
              image: AssetImage('assets/images/ConventionalWeapons.jpg')),
        ),
        const SizedBox(width: 20.0),
        Column(
          children: [
            SizedBox(
              width: 500,
              height: 80,
              child: Text(
                'The World Is Ugly',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            SizedBox(
              width: 490,
              height: 50,
              child: Text(
                "My Chemical Romance's official video for The World Is Ugly",
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
                "Duración: 5:01",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        )
      ],
    );
  }
}
