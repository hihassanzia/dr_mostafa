import 'package:dr_mostafa/books_screen.dart';
import 'package:dr_mostafa/components/sidebar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'new_consultation.dart';
import 'components/background_container.dart';
import 'components/custom_bar.dart';
import 'components/bar_content.dart';
import 'components/custom_appBar.dart';
import 'components/books_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double imgWidth = 80 * (MediaQuery.of(context).size.width) / 100;
    double imgHeight = 30 * (MediaQuery.of(context).size.height) / 100;
    return BackgroundContainer(
      child: Scaffold(
        appBar: CustomAppBar(
          title: 'HOME',
          actions: [
            IconButton(
              icon: Icon(
                Icons.notifications,
                color: Color(0xffffc107),
              ),
              onPressed: null,
            )
          ],
        ),
        drawer: Sidebar(),
        body: ListView(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: imgHeight + 90,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Image.asset(
                      'images/dr.png',
                      width: imgWidth,
                      height: imgHeight + 5,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Dr. Mostafa Abou Saad',
                      style: TextStyle(
                        fontSize: 19,
                        letterSpacing: 0.7,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Therapist & Psychologist Professor',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //Padding(padding: EdgeInsets.only(top: 10)),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomBar(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return NewConsultation();
                          },
                        ),
                      );
                    },
                    child: BarContent(
                      icon: 'icons/add.png',
                      description: 'New Consultation',
                    ),
                  ),
                  SizedBox(height: 15),
                  CustomBar(
                    child: BarContent(
                      icon: 'icons/edit.png',
                      description: 'Review my consultations',
                    ),
                  ),
                  SizedBox(height: 15),
                  CustomBar(
                    child: BarContent(
                      icon: 'icons/doctor.png',
                      description: 'Online Courses',
                    ),
                  ),
                  SizedBox(height: 15),
                  CustomBar(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return BooksScreen();
                          },
                        ),
                      );
                    },
                    child: BarContent(
                      icon: 'icons/open-book.png',
                      description: 'Dr. Mostafa\'s Books',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Text(
              'NEW ARRIVALS',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
              ),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    BooksBar(
                      bookName: 'Book Name',
                      imgUrl: 'images/books/book.png',
                    ),
                    SizedBox(width: 10),
                    BooksBar(
                      bookName: 'Book Name',
                      imgUrl: 'images/books/book.png',
                    ),
                    SizedBox(width: 10),
                    BooksBar(
                      bookName: 'Book Name',
                      imgUrl: 'images/books/book.png',
                    ),
                    SizedBox(width: 10),
                    BooksBar(
                      bookName: 'Book Name',
                      imgUrl: 'images/books/book.png',
                    ),
                    SizedBox(width: 10),
                    BooksBar(
                      bookName: 'Book Name',
                      imgUrl: 'images/books/book.png',
                    ),
                    SizedBox(width: 10),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
