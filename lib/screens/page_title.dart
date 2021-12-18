import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold);
    const textStyle2 = TextStyle(
      color: Colors.white,
      fontSize: 14,
    );
    return SafeArea(
      bottom: false,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Classify transaction ',
              style: textStyle,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Tempor enim proident enim dolor deserunt nostrud do velit ex aute consectetur sit nisi.',
              style: textStyle2,
            )
          ],
        ),
      ),
    );
  }
}
