import 'package:capstone_flutter/config/theme.dart';
import 'package:flutter/material.dart';

class EventPage extends StatefulWidget {
  const EventPage({super.key});

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20.0),
                    color: forthColor),
                width: 600,
                height: 200,
                child: Text('Tanggal Hari Ini',
                    style: poppinsKecil.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: blackColor)),
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
    return Card(
      shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
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
              Card(
                color: thirdColor,
                child: Text(
                  '12 Jan 2023',
                  style: poppinsKecil.copyWith(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: whiteColor),
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
              Text(
                'Lokasi Event',
                style: poppinsKecil.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: blackColor),
              )
            ],
          )
        ],
      ),
    );
  }
}
