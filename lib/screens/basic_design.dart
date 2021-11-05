import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _Mybody(),
    );
  }
}

class _Mybody extends StatelessWidget {
  const _Mybody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Image(image: AssetImage('assets/fondo.jpg')),
        const FilaUno(),
        const FilaDos(),
        Container(
          margin: const EdgeInsets.all(20),
          child: const Text(
              'Et ipsum enim aute irure aliquip nisi exercitation. Amet elit sit eu amet cupidatat ea ad. Magna labore irure et eiusmod sit ullamco cillum esse proident occaecat reprehenderit velit.'),
        )
      ],
    );
  }
}

class FilaDos extends StatelessWidget {
  const FilaDos({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        MyBoton(
          icon: Icons.call,
          text: 'Call',
        ),
        MyBoton(
          icon: Icons.ac_unit,
          text: 'Route',
        ),
        MyBoton(
          icon: Icons.share,
          text: 'Share',
        ),
      ],
    );
  }
}

class MyBoton extends StatelessWidget {
  final IconData icon;
  final String text;
  const MyBoton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
        ),
        Text(text),
      ],
    );
  }
}

class FilaUno extends StatelessWidget {
  const FilaUno({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Texto Titulo muy largo',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Texto subtitulo tambien largo'),
            ],
          ),
          Expanded(
              child: Container(
            height: 10,
          )),
          const Icon(
            Icons.star_rate,
            color: Colors.orange,
          ),
          const Text('41')
        ],
      ),
    );
  }
}
