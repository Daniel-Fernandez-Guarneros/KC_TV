import 'package:flutter/material.dart';
import 'package:kc_tv_app/screens/player_screen.dart';

class SongsCards extends StatelessWidget {
  const SongsCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 3, 43, 113),
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
                'Lista de Canciones',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            _start(context),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 3, 43, 113),
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
        // 1ra Canción
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PlayerScreen(
                  url:
                      "https://www.youtube.com/watch?v=Sfmzkj5QSto&ab_channel=MyChemicalRomance",
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
                '  The World Is Ugly',
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
        ),
        const SizedBox(height: 20.0),

        // 2da Canción
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PlayerScreen(
                  url:
                      "https://www.youtube.com/watch?v=yPe180bxVuE&ab_channel=MotionlessInWhite",
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
                '  Thoughts & Prayers',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            SizedBox(
              width: 490,
              height: 50,
              child: Text(
                "Motionless In White's official video for 'Thoughts & Prayers' from the record, Disguise - available now on Roadrunner Records.",
                style: Theme.of(context).textTheme.bodyMedium,
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
                "Duración: 4:15",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20.0),

        // 3era Canción
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PlayerScreen(
                  url:
                      "https://www.youtube.com/watch?v=B3faYe5V4Sk&ab_channel=MotionlessInWhite",
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
                '  Voices',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            SizedBox(
              width: 490,
              height: 50,
              child: Text(
                "Motionless In White's official video for 'Voices' from the new record Graveyard Shift - available now on Roadrunner Records.",
                style: Theme.of(context).textTheme.bodyMedium,
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
                "Duración: 3:42",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20.0),

        // 4ta Canción
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PlayerScreen(
                  url:
                      "https://www.youtube.com/watch?v=GaLaMd_EAo4&ab_channel=MyChemicalRomance-Topic",
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
              height: 80,
              child: Text(
                '  Demolition Lovers',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            SizedBox(
              width: 490,
              height: 50,
              child: Text(
                "My Chemical Romance's official video for Demolition Lovers",
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
                "Duración: 6:06",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20.0),

        // 5ta Canción
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PlayerScreen(
                  url:
                      "https://www.youtube.com/watch?v=YmjQVRtxS4E&ab_channel=MotionlessInWhite",
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
              height: 80,
              child: Text(
                '  Cyberhex',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            SizedBox(
              width: 490,
              height: 50,
              child: Text(
                "Motionless In White's official video for 'Cyberhex' - available now on Roadrunner Records.",
                style: Theme.of(context).textTheme.bodyMedium,
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
                "Duración: 4:40",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20.0),

        // 6ta Canción
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PlayerScreen(
                  url:
                      "https://www.youtube.com/watch?v=73Y_x30uKQg&ab_channel=MyChemicalRomance",
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
                '  The Sharpest Lives',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            SizedBox(
              width: 490,
              height: 80,
              child: Text(
                "We, the members of MCR, dedicate this release to the memory of Craig Aaronson, our friend, our relentless champion, our A&R man. He was appreciated, he was loved, he will be forever missed.",
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
                "Duración: 3:20",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20.0),

        // 7ma Canción
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PlayerScreen(
                  url:
                      "https://www.youtube.com/watch?v=ShQdOf2zAzc&ab_channel=MyChemicalRomance-Topic",
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
                '  You Know What They Do to',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            SizedBox(
              child: Text(
                'Guys Like Us in Prison',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 490,
              height: 80,
              child: Text(
                "My Chemical Romance's official video for You Know What They Do to Guys Like Us in Prison",
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
                "Duración: 2:53",
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
