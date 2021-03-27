import 'package:dr_mostafa/components/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:dr_mostafa/components/background_container.dart';
import 'package:dr_mostafa/components/custom_appBar.dart';

class ClinicReservation extends StatefulWidget {
  @override
  _ClinicReservationState createState() => _ClinicReservationState();
}

class _ClinicReservationState extends State<ClinicReservation> {
  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
      child: Scaffold(
        appBar: CustomAppBar(
          title: 'CLINIC RESERVATION',
          actions: [
            IconButton(
              icon: Icon(
                Icons.notifications,
                color: Color(0xffffc107),
              ),
              onPressed: null,
            ),
          ],
        ),
        drawer: Sidebar(),
        body: Padding(
          padding: EdgeInsets.fromLTRB(10, 50, 10, 20),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 75,
                decoration: BoxDecoration(
                  color: Color(0xFF083E5A),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: double.infinity,
                        child: Text(
                          'PICK DATE',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '09 / 04 / 2021',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 1,
                            ),
                          ),
                          Image.asset(
                            'icons/date.png',
                            width: 32,
                            height: 32,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Available Appointment',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    letterSpacing: 0.7,
                  ),
                ),
              ),
              SizedBox(height: 10),
              TimeRow('09:00 AM', '09:30 AM', '10:00 AM'),
              SizedBox(height: 10),
              TimeRow('10:30 AM', '11:00 AM', '11:30 AM'),
              SizedBox(height: 10),
              TimeRow('12:00 PM', '12:30 PM', '01:00 PM'),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomLeft,
                  child: Container(
                    width: double.infinity,
                    height: 65,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.topRight,
                        //stops: [0.4, 1],
                        colors: [
                          Color(0xff11bbbd),
                          Color(0xFF045caf),
                        ],
                      ),
                      borderRadius: BorderRadius.all(Radius.elliptical(50, 50)),
                    ),
                    child: Center(
                      child: Text(
                        'BOOK',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.5,
                        ),
                      ),
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

class TimeRow extends StatelessWidget {
  final String t1, t2, t3;
  TimeRow(this.t1, this.t2, this.t3);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 30.5 * (MediaQuery.of(context).size.width) / 100,
          height: 50,
          decoration: BoxDecoration(
            color: Color(0xFF083E5A),
            borderRadius: BorderRadius.all(Radius.elliptical(50, 50)),
          ),
          child: Center(
            child: Text(
              t1,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                letterSpacing: 1,
              ),
            ),
          ),
        ),
        Container(
          width: 30.5 * (MediaQuery.of(context).size.width) / 100,
          height: 50,
          decoration: BoxDecoration(
            color: Color(0xFF083E5A),
            borderRadius: BorderRadius.all(Radius.elliptical(50, 50)),
          ),
          child: Center(
            child: Text(
              t2,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                letterSpacing: 1,
              ),
            ),
          ),
        ),
        Container(
          width: 30.5 * (MediaQuery.of(context).size.width) / 100,
          height: 50,
          decoration: BoxDecoration(
            color: Color(0xFF083E5A),
            borderRadius: BorderRadius.all(Radius.elliptical(50, 50)),
          ),
          child: Center(
            child: Text(
              t3,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                letterSpacing: 1,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
