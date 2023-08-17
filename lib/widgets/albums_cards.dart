import 'package:flutter/material.dart';
import 'package:kc_tv_app/screens/player_screen.dart';

class AlbumsCards extends StatelessWidget {
  const AlbumsCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 3, 113, 10),
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
                'Lista de Albumes',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            _start(context),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 3, 113, 10),
                  padding: const EdgeInsets.symmetric(horizontal: 400),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Regresar',
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }

  Widget _start(BuildContext context) {
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
          width: 120,
        ),

        // 5ta Album
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PlayerScreen(
                  url:
                      "https://www.youtube.com/watch?v=A7t1y0v8e0k&ab_channel=LuReX%F0%9F%85%A5",
                ),
              ),
            );
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: const Image(
                image: AssetImage('assets/images/ScoringtheEndoftheWorld.jpg'),
                width: 316),
          ),
        ),
        const SizedBox(height: 20.0),
        Column(
          children: [
            SizedBox(
              width: 530,
              child: Text(
                '  Scoring the End of the',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            SizedBox(
              width: 530,
              child: Text(
                '                World',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 490,
              height: 50,
              child: Text(
                "Banda: Motionless In White",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            SizedBox(
              width: 490,
              height: 50,
              child: Text(
                "Fecha de creación: 10 de Junio de 2022",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20.0),

        // 6ta Album
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PlayerScreen(
                  url:
                      "https://www.youtube.com/watch?v=3D0K9QOyN2w&ab_channel=Vin%C3%ADciusOliveira",
                ),
              ),
            );
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: const Image(
                image: AssetImage('assets/images/TheBlackParade.jpg'),
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
                '  The Black Parade',
                style: Theme.of(context).textTheme.headlineLarge,
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
                "Fecha de creación: 23 de Octubre de 2006",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20.0),

        // 7ma Album
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PlayerScreen(
                  url:
                      "https://www.youtube.com/watch?v=vbxyvGB-Eu0&t=3s&ab_channel=DailyVinyl",
                ),
              ),
            );
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: const Image(
                image:
                    AssetImage('assets/images/ThreeCheersforSweetRevenge.jpg'),
                width: 316),
          ),
        ),
        const SizedBox(height: 20.0),
        Column(
          children: [
            SizedBox(
              width: 530,
              child: Text(
                '  Three Cheers for Sweet',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            SizedBox(
              width: 530,
              child: Text(
                '               Revenge',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            const SizedBox(
              height: 30,
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
                "Fecha de creación: 8 de Junio de 2004",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20.0),

        // 1ra Album
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PlayerScreen(
                  url:
                      "https://www.youtube.com/watch?v=cjzL6vmnmqY&ab_channel=LifebloodTV",
                ),
              ),
            );
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: const Image(
                image: AssetImage('assets/images/ConventionalWeapons.jpg'),
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
                '  Conventional Weapons',
                style: Theme.of(context).textTheme.headlineLarge,
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
                "Fecha de creación: 30 de Octubre de 2012",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20.0),

        // 2da Album
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PlayerScreen(
                  url:
                      "https://www.youtube.com/watch?v=hlREynPDfb4&ab_channel=RockSolidRecords",
                ),
              ),
            );
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: const Image(
                image: AssetImage('assets/images/Disguise.jpg'), width: 316),
          ),
        ),
        const SizedBox(height: 20.0),
        Column(
          children: [
            SizedBox(
              width: 530,
              height: 80,
              child: Text(
                '  Disguise',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            SizedBox(
              width: 490,
              height: 50,
              child: Text(
                "Banda: Motionless In White",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            SizedBox(
              width: 490,
              height: 50,
              child: Text(
                "Fecha de creación: 7 de Junio de 2019",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20.0),

        // 3era Album
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PlayerScreen(
                  url:
                      "https://www.youtube.com/watch?v=SL8EMAGpD0k&ab_channel=RockSolidRecords",
                ),
              ),
            );
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: const Image(
                image: AssetImage('assets/images/GraveyardShift.jpg'),
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
                '  Graveyard Shift',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            SizedBox(
              width: 490,
              height: 50,
              child: Text(
                "Banda: Motionless In White",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            SizedBox(
              width: 490,
              height: 50,
              child: Text(
                "Fecha de creación: 5 de Mayo de 2017",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20.0),

        // 4ta Album
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PlayerScreen(
                  url:
                      "https://www.youtube.com/watch?v=b_k2toCYM9A&ab_channel=MCR",
                ),
              ),
            );
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: const Image(
                image: AssetImage(
                    'assets/images/IBroughtYouBulletsYouBroughtMeYourLove.jpg'),
                width: 316),
          ),
        ),
        const SizedBox(height: 20.0),
        Column(
          children: [
            SizedBox(
              width: 530,
              child: Text(
                '  I Brought You Bullets',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            SizedBox(
              width: 530,
              child: Text(
                '  You Brought Me Your Love',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            const SizedBox(
              height: 30,
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
                "Fecha de creación: 23 de Julio de 2002",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 100,
        ),
      ],
    );
  }
}
