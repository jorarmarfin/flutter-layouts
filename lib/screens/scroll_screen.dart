import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  const ScrollScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: const [
          Screen1(),
          Screen2(),
          Screen1(),
        ],
      ),
    );
  }
}

class Screen1 extends StatelessWidget {
  const Screen1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [Background(), Texto()],
    );
  }
}

class Texto extends StatelessWidget {
  const Texto({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 60, color: Colors.white);
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('11°', style: textStyle),
          const Text('Miercoles', style: textStyle),
          Expanded(child: Container()),
          const Icon(
            Icons.keyboard_arrow_down,
            color: Colors.white,
            size: 100,
          )
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topCenter,
        width: double.infinity,
        color: const Color(0xff50C2DD),
        child: const Image(
            width: double.infinity,
            fit: BoxFit.fill,
            image: AssetImage('assets/fondo2.png')));
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
      child: Center(
        child: TextButton(
            style: TextButton.styleFrom(backgroundColor: Colors.purple),
            onPressed: () => {},
            child: const Text('Boton', style: TextStyle(color: Colors.black))),
      ),
    );
  }
}
