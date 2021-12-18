import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_layouts/screens/basic_design.dart';
import 'package:flutter_layouts/screens/button_screen.dart';
import 'package:flutter_layouts/screens/layout5_screen.dart';
import 'package:flutter_layouts/screens/scroll_screen.dart';
// import 'package:flutter_layouts/screens/opciones.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'layout5',
      routes: {
        'layout1': (_) => const BasicDesignScreen(),
        'layout2': (_) => const ScrollScreen(),
        'layout3': (_) => const ButtonScreen(),
        'layout5': (_) => const Layout5Screen(),
      },
    );
  }
}
