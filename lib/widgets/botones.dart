import 'package:flutter/material.dart';

class Botones extends StatelessWidget {
  const Botones({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _Boton(
            color: Colors.blue,
            icon: Icons.ac_unit,
            text: 'General',
          ),
          _Boton(
            color: Colors.red,
            icon: Icons.phone,
            text: 'Telefono',
          ),
        ]),
      ],
    );
  }
}

class _Boton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;
  const _Boton(
      {Key? key, required this.icon, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      height: 180,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(62, 66, 107, 0.7),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            child: Icon(
              icon,
              size: 40,
            ),
            radius: 30,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(text, style: const TextStyle(color: Colors.blue))
        ],
      ),
    );
  }
}
