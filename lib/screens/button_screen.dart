import 'package:flutter/material.dart';
import 'package:flutter_layouts/screens/page_title.dart';
import 'package:flutter_layouts/widgets/background.dart';
import 'package:flutter_layouts/widgets/botones.dart';
import 'package:flutter_layouts/widgets/tabs.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          Background(),
          _Panel(),
        ],
      ),
      bottomNavigationBar: const Tabs(),
    );
  }
}

class _Panel extends StatelessWidget {
  const _Panel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children:const [
          PageTitle(),
          Botones()
        ],
      ),
    );
  }
}
