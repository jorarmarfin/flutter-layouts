import 'package:flutter/material.dart';

class OpcionesScreen extends StatelessWidget {
  const OpcionesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Opciones'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () => {},
              child: const Text('Opcion 2'),
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
                primary: Colors.white,
                textStyle: const TextStyle(fontSize: 20),
              ),
            ),
            const Text('Hola Mundo..'),
          ],
        ),
      ),
    );
  }
}
