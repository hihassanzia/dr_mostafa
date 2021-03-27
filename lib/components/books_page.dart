import 'package:flutter/material.dart';

class BooksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = (MediaQuery.of(context).size.width) / 2 - 15;
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Material(
            color: Colors.transparent,
            elevation: 2,
            borderRadius: BorderRadius.circular(15),
            child: Container(
              width: width,
              height: width + 10,
              child: Center(
                child: Image.asset(
                  'images/books/book.png',
                  height: width - 5,
                  width: width - 10,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text('Book Name'),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
