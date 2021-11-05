import 'package:flutter/material.dart';
import 'package:flutter_layouts/screens/basic_design.dart';


Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => const BasicDesignScreen(),
    // 'alert': (BuildContext context) => AlertPage(),
    // 'avatar': (BuildContext context) => AvatarPage(),
    // 'card': (BuildContext context) => CardPage(),
    // 'inputs': (BuildContext context) => InputPage(),
    // 'list': (BuildContext context) => SliderPage(),
  };
}