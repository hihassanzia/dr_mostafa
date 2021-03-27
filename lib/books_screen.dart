import 'package:flutter/material.dart';
import 'components/background_container.dart';
import 'components/custom_appBar.dart';
import 'components/books_page.dart';
import 'components/sidebar.dart';

class BooksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
      child: Scaffold(
        appBar: CustomAppBar(
          title: 'DR. MOSTAFA\'S BOOKS',
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
        body: DefaultTabController(
          length: 4,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFF0E72A4),
                ),
                child: TabBar(
                  labelPadding: EdgeInsets.symmetric(horizontal: 20),
                  isScrollable: true,
                  indicatorColor: Colors.white,
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                  ),
                  tabs: [
                    Tab(
                      text: 'All',
                    ),
                    Tab(
                      text: 'New',
                    ),
                    Tab(
                      text: 'Must Have',
                    ),
                    Tab(
                      text: 'On Sale',
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                  child: Container(
                    child: TabBarView(
                      children: [
                        //all
                        ListView(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                BooksPage(),
                                BooksPage(),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                BooksPage(),
                                BooksPage(),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                BooksPage(),
                                BooksPage(),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                BooksPage(),
                                BooksPage(),
                              ],
                            ),
                          ],
                        ),

                        //new
                        ListView(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                BooksPage(),
                                BooksPage(),
                              ],
                            ),
                          ],
                        ),

                        //Must Have
                        ListView(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                BooksPage(),
                                BooksPage(),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                BooksPage(),
                                BooksPage(),
                              ],
                            ),
                          ],
                        ),

                        //On Sale
                        ListView(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                BooksPage(),
                                BooksPage(),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
