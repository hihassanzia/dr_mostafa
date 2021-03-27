import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(56);

  final Widget leading;
  final String title;
  final List<Widget> actions;

  CustomAppBar({this.leading, this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'Raleway',
          letterSpacing: 0,
        ),
      ),
      actions: actions,
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }
}
