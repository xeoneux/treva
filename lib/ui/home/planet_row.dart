import 'package:flutter/material.dart';

import 'package:treva/model/planet.dart';

class PlanetRow extends StatelessWidget {
  final Planet planet;
  PlanetRow(this.planet);

  @override
  Widget build(BuildContext context) {
    final planetCard = Container(
      height: 124.0,
      margin: EdgeInsets.only(left: 46.0),
      decoration: BoxDecoration(
        color: Color(0xFF333366),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            blurRadius: 10.0,
            color: Colors.black12,
            offset: Offset(0.0, 10.0),
          ),
        ],
      ),
    );

    final planetThumbnail = Container(
      child: Image(
        width: 92.0,
        height: 92.0,
        image: AssetImage(planet.image),
      ),
      alignment: FractionalOffset.centerLeft,
      margin: EdgeInsets.symmetric(vertical: 16.0),
    );

    return Container(
      margin: EdgeInsets.only(
        top: 16.0,
        left: 24.0,
        right: 24.0,
        bottom: 16.0,
      ),
      child: Stack(children: [
        planetCard,
        planetThumbnail,
      ]),
    );
  }
}
