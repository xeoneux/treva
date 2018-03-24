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
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return Container(
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 36.0,
            color: Colors.white,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      height: barHeight + statusBarHeight,
      decoration: BoxDecoration(color: Colors.blue),
    );
  }
}
