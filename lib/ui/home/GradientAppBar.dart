import 'package:flutter/material.dart';

class GradientAppBar extends StatelessWidget {
  final String title;
  final double barHeight = 66.0;

  GradientAppBar(this.title);

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
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF3366FF),
            Color(0xFF00CCFF),
          ],
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
          end: FractionalOffset(1.0, 0.0),
          begin: FractionalOffset(0.0, 0.0),
        ),
      ),
      height: barHeight + statusBarHeight,
      padding: EdgeInsets.only(top: statusBarHeight),
    );
  }
}
