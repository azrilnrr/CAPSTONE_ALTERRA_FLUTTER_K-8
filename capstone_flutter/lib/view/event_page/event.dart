import 'package:capstone_flutter/config/theme.dart';
import 'package:capstone_flutter/view/event_page/eventdetail.dart';
import 'package:flutter/material.dart';
import 'package:weekly_date_picker/weekly_date_picker.dart';

class EventPage extends StatefulWidget {
  const EventPage({super.key});

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  DateTime _selectedDay = DateTime.now();
  @override
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
          child: Column(
            children: [
              WeeklyDatePicker(
                backgroundColor: thirdColor,
                weekdays: const [
                  'Mon',
                  'Tue',
                  'Wed',
                  'Thu',
                  'Fri',
                  'Sat',
                  'Sun'
                ],
                selectedBackgroundColor: fifthColor,
                enableWeeknumberText: false,
                selectedDigitColor: thirdColor,
                digitsColor: secondaryColor,
                weekdayTextColor: blackColor,
                selectedDay: _selectedDay,
                changeDay: (value) => setState(
                  () {
                    _selectedDay = value;
                  },
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const CardEvent(),
              const SizedBox(
                height: 10,
              ),
              const CardEvent(),
              const SizedBox(
                height: 10,
              ),
              const CardEvent(),
              const SizedBox(
                height: 10,
              ),
              const CardEvent()
            ],
          ),
        ),
      ),
    );
  }
}

class CardEvent extends StatelessWidget {
  const CardEvent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const EventDetailScreen(),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: fifthColor,
        shadowColor: secondaryColor,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  'assets/logo.png',
                  width: 94,
                  height: 87,
                ),
              ),
            ),
            const SizedBox(
              width: 24,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: thirdColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '12 Jan 2023',
                      style: poppinsKecil.copyWith(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: whiteColor),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  'Title Event',
                  style: poppinsKecil.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: blackColor),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icon/event_icon/location_on.png',
                      width: 10,
                      height: 13,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Lokasi Event',
                      style: poppinsKecil.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: blackColor),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
