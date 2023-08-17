import 'package:flutter/material.dart';
import 'package:kc_tv_app/screens/player_screen.dart';

class BandsCards extends StatelessWidget {
  const BandsCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 89, 3, 113),
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
                'Lista de Bandas',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            _start(context),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 89, 3, 113),
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
          width: 30,
        ),

        // 1ra Band
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PlayerScreen(
                  url:
                      "https://www.youtube.com/watch?v=_oZQtuajySE&ab_channel=VADEROCK",
                ),
              ),
            );
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: const Image(
                image: AssetImage('assets/images/MyChemicalRomance.png'),
                height: 316),
          ),
        ),
        const SizedBox(height: 20.0),
        Column(
          children: [
            SizedBox(
              width: 530,
              height: 80,
              child: Text(
                '  My Chemical Romance',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            SizedBox(
              width: 490,
              height: 50,
              child: Text(
                "Año de creación: 2001",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            SizedBox(
              width: 490,
              height: 50,
              child: Text(
                "Género: Rock",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            SizedBox(
              width: 490,
              height: 70,
              child: Text(
                "Descripción: My Chemical Romance is considered one of the greatest alternative rock bands of the 2000s. Formed in Jersey City, New Jersey in 2001.",
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
                      "https://www.youtube.com/watch?v=juG4DDokBaI&ab_channel=DennisAwakening",
                ),
              ),
            );
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: const Image(
                image: AssetImage('assets/images/MotionlessInWhite.jpg'),
                height: 316),
          ),
        ),
        const SizedBox(height: 20.0),
        Column(
          children: [
            SizedBox(
              width: 530,
              height: 80,
              child: Text(
                '  Motionless In White',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            SizedBox(
              width: 490,
              height: 50,
              child: Text(
                "Año de creación: 2005",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            SizedBox(
              width: 490,
              height: 50,
              child: Text(
                "Género: Metal",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            SizedBox(
              width: 490,
              height: 70,
              child: Text(
                "Descripción: Chris Motionless - Vocals, Ricky Horror - Guitar, Ryan Sitkowski - Guitar, Vinny Mauro - Drums, Justin Morrow - Bass",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
