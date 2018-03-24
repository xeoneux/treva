import 'package:flutter/material.dart';

import 'package:treva/ui/home/GradientAppBar.dart';
import 'package:treva/ui/home/HomePageBody.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          GradientAppBar('treva'),
          HomePageBody(),
          HomePageBody(),
          HomePageBody(),
        ],
      ),
    );
  }
}
