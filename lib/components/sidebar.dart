import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../books_screen.dart';

class Sidebar extends StatelessWidget {
  _buildDrawerOption({IconData icon, String title, Function onTap}) {
    return GestureDetector(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Icon(
            icon,
            size: 25,
            color: Color(0xff577085),
          ),
          SizedBox(width: 10),
          Text(
            title,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w900,
              letterSpacing: 0.5,
              color: Color(0xff113353),
            ),
          ),
        ],
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 180,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 2,
                  color: Color(0xffCDCDCD),
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 1.5,
                      color: Color(0xffCDCDCD),
                    ),
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'images/avatar.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Sophia Williams',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 0.5,
                    color: Color(0xff113353),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 190,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 2,
                  color: Color(0xffCDCDCD),
                ),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildDrawerOption(
                    icon: LineAwesomeIcons.user,
                    title: 'My Profile',
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
                  ),
                  _buildDrawerOption(
                    icon: LineAwesomeIcons.comment,
                    title: 'My Consultations',
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
                  ),
                  _buildDrawerOption(
                    icon: LineAwesomeIcons.envelope,
                    title: 'Contact Us',
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
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'App Language',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w900,
                        color: Color(0xff113353),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 160,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xffb7c1cb),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: FractionalOffset.bottomLeft,
                        child: Container(
                          width: 160,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Color(0xffb7c1cb),
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(50, 50)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RotatedBox(
                                quarterTurns: 2,
                                child: Icon(
                                  Icons.logout,
                                  color: Color(0xff425d77),
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Sign Out',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w900,
                                  color: Color(0xff113353),
                                  letterSpacing: .5,
                                ),
                              ),
                              SizedBox(width: 10),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
