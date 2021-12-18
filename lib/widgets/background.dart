import 'dart:math';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const boxDecoration = BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.2, 0.8],
            colors: [Color(0xff2E305F), Color(0xff202333)]));
    return Stack(
      children: [
        //color de fondo
        Container(
          decoration: boxDecoration,
        ),
        //Caja rosada
        const Positioned(top: -0, left: -5, child: _CajaRosada())
      ],
    );
  }
}

class _CajaRosada extends StatelessWidget {
  const _CajaRosada({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 3.7,
      child: Container(
        width: 250,
        height: 250,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
            gradient: const LinearGradient(colors: [
              Color.fromRGBO(236, 98, 188, 1),
              Color.fromRGBO(241, 142, 172, 1)
            ])),
      ),
    );
  }
}
