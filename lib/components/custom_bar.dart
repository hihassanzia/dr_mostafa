import 'package:flutter/material.dart';

class CustomBar extends StatelessWidget {
  final Widget child;
  final Function onTap;
  CustomBar({this.child, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Material(
        color: Colors.transparent,
        elevation: 2,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          width: double.infinity,
          height: 68,
          child: child,
        ),
      ),
    );
  }
}
