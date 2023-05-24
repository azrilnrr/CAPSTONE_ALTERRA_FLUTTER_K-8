import 'package:capstone_flutter/view/event_page/event.dart';
import 'package:capstone_flutter/view/event_page/eventdetail.dart';
import 'package:capstone_flutter/view/event_page/overlaybuyevent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/': (context) => const EventPage(),
            '/eventdetail': (context) => const EventDetailScreen(),
            '/buyevent': (context) => const BuyEvent()
          },
        );
      },
    );
  }
}
