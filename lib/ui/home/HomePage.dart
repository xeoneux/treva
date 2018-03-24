import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          _GradientAppBar('Planets'),
        ],
      ),
    );
  }
}

class _GradientAppBar extends StatelessWidget {
  final String title;
  final double barHeight = 66.0;

  _GradientAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: barHeight,
      child: Center(child: Text(title)),
      decoration: BoxDecoration(color: Colors.blue),
    );
  }
}
