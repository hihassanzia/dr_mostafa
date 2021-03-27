import 'package:flutter/material.dart';
import 'components/background_container.dart';
import 'components/custom_appBar.dart';
import 'components/custom_bar.dart';
import 'components/bar_content.dart';
import 'components/sidebar.dart';
import 'clinic_reservation.dart';

class NewConsultation extends StatefulWidget {
  @override
  _NewConsultationState createState() => _NewConsultationState();
}

class _NewConsultationState extends State<NewConsultation> {
  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
      child: Scaffold(
        appBar: CustomAppBar(
          title: 'NEW CONSULTATIONS',
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
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              CustomBar(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ClinicReservation();
                      },
                    ),
                  );
                },
                child: BarContent(
                  icon: 'icons/calendar.png',
                  description: 'Clinic Reservation',
                ),
              ),
              SizedBox(height: 10),
              CustomBar(
                child: BarContent(
                  icon: 'icons/chat.png',
                  description: 'Ask Questions',
                ),
              ),
              SizedBox(height: 10),
              CustomBar(
                child: BarContent(
                  icon: 'icons/voice-message.png',
                  description: 'Text and Voice Consultations',
                ),
              ),
              SizedBox(height: 10),
              CustomBar(
                child: BarContent(
                  icon: 'icons/video-call.png',
                  description: 'Live video calls',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
