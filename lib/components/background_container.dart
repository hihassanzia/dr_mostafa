import 'package:flutter/material.dart';

class BackgroundContainer extends StatelessWidget {
  final Widget child;
  BackgroundContainer({this.child});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomLeft,
          stops: [0.4, 1],
          colors: [
            Color(0xFF1187be),
            Color(0xff061465),
          ],
        ),
      ),
      child: child,
    );
  }
}
