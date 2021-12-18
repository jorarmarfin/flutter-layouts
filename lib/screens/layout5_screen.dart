import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Layout5Screen extends StatelessWidget {
  const Layout5Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: const [_ListaBotones(), _Header()],
    ));
  }
}

class _ListaBotones extends StatelessWidget {
  const _ListaBotones({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      _MyBoton(
        myIcon: FontAwesomeIcons.carCrash,
        myColor1: Colors.blue,
        myColor2: Colors.blueAccent,
        myTexto: 'texto 4',
        presiono: () {
          // ignore: avoid_print
          print('clic!!');
        },
      ),
    ]);
  }
}

class _MyBoton extends StatelessWidget {
  final IconData myIcon;
  final String myTexto;
  final Color myColor1;
  final Color myColor2;
  final Function presiono;

  const _MyBoton({
    Key? key,
    required this.myIcon,
    required this.myTexto,
    required this.myColor1,
    required this.myColor2,
    required this.presiono,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // ignore: avoid_print
        print('clic!!');
      },
      child: Container(
        width: double.infinity,
        height: 90,
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  offset: const Offset(4, 6),
                  blurRadius: 10)
            ],
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(colors: [myColor1, myColor2])),
        child: Stack(
          children: [
            Positioned(
                top: -20,
                right: -20,
                child: FaIcon(
                  myIcon,
                  size: 150,
                  color: Colors.white.withOpacity(0.4),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 140,
                  width: 10,
                ),
                FaIcon(
                  myIcon,
                  color: Colors.white,
                  size: 40,
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Text(myTexto,
                      style:
                          const TextStyle(color: Colors.white, fontSize: 18)),
                ),
                FaIcon(myIcon, color: Colors.white),
                const SizedBox(
                  width: 10,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const _Background(),
        Positioned(
            top: -50,
            left: -60,
            child: FaIcon(
              FontAwesomeIcons.plus,
              size: 250,
              color: Colors.white.withOpacity(0.2),
            )),
        Column(
          children: const [
            SizedBox(
              height: 30,
              width: double.infinity,
            ),
            Text('Haz solicitado',
                style: TextStyle(fontSize: 20, color: Colors.white)),
            SizedBox(
              height: 20,
            ),
            Text('Asistencia medica',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            FaIcon(
              FontAwesomeIcons.plus,
              size: 80,
              color: Colors.white,
            )
          ],
        )
      ],
    );
  }
}

class _Background extends StatelessWidget {
  const _Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200.0,
      decoration: const BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xff526Bf6), Color(0xff67ACF2)])),
    );
  }
}
