import 'package:flutter/material.dart';

class BooksBar extends StatelessWidget {
  final Function onTap;
  final String bookName, imgUrl;

  BooksBar({this.onTap, this.bookName, this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Material(
            color: Colors.transparent,
            elevation: 2,
            borderRadius: BorderRadius.circular(15),
            child: Container(
              width: 140,
              height: 140,
              child: Center(
                child: Image.asset(
                  imgUrl,
                  height: 120,
                  width: 120,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(bookName),
        ],
      ),
    );
  }
}
