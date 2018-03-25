import 'package:flutter/material.dart';

import 'package:treva/model/planet.dart';
import 'package:treva/ui/home/planet_row.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlanetRow(planets[0]);
  }
}
