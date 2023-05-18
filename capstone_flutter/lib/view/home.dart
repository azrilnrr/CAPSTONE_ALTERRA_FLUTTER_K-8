import 'package:flutter/material.dart';
import '../config/theme.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 74,
                width: MediaQuery.of(context).size.width * 1,
                // color: secondaryColor,
                decoration: BoxDecoration(
                    color: secondaryColor,
                    // color: Colors.blueAccent[400],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    )),

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              filled: true,
                              enabled: false,
                              fillColor: Color.fromRGBO(205, 203, 200, 0.2),
                              prefixIcon: Icon(
                                Icons.search,
                                size: 14.67,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)))),
                        ),
                      )),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Icon(
                          Icons.shop,
                          color: primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              Center(
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  child: SizedBox(
                    height: 167,
                    width: 310,
                    child: ClipRRect(
                      // decoration: const BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      ),
                      // ),
                      child: Image.network(
                        'https://ticket.gwkbali.com/images/ticket/1200%20x%20900.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Text(
                  'Event',
                  style: poppinsKecil.copyWith(
                      fontSize: 16,
                      color: Color.fromRGBO(48, 48, 48, 1),
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                child: Card(
                  // color: Color.fromRGBO(215, 245, 246, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: SizedBox(
                            height: 87,
                            width: 94,
                            child: Image.network(
                              'https://ticket.gwkbali.com/images/ticket/1200%20x%20900.png'
                              // 'https://f.ptcdn.info/298/073/000/qs7t6ibhscUkbPBmH8t-o.jpg',
                              ,
                              fit: BoxFit.cover,
                              // scale: 25.0,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              color: thirdColor,
                              child: Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Text(
                                  '12 Jan 2023',
                                  style: poppinsKecil.copyWith(
                                      fontSize: 10,
                                      color: Color.fromRGBO(247, 245, 245, 1),
                                      fontWeight: FontWeight.w400),
                                ),
                              )),
                          Text(
                            'Title Event',
                            style: poppinsKecil.copyWith(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Event Location',
                            style: poppinsKecil.copyWith(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Text(
                  'Shopping',
                  style: poppinsKecil.copyWith(
                      fontSize: 16,
                      color: Color.fromRGBO(48, 48, 48, 1),
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: SizedBox(
                      height: 87,
                      width: 94,
                      child: Image.network(
                        'https://ticket.gwkbali.com/images/ticket/1200%20x%20900.png'
                        // 'https://f.ptcdn.info/298/073/000/qs7t6ibhscUkbPBmH8t-o.jpg',
                        ,
                        fit: BoxFit.cover,
                        // scale: 25.0,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Text(
                  'Promo',
                  style: poppinsKecil.copyWith(
                      fontSize: 16,
                      color: Color.fromRGBO(48, 48, 48, 1),
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: SizedBox(
                      height: 87,
                      width: 94,
                      child: Image.network(
                        'https://ticket.gwkbali.com/images/ticket/1200%20x%20900.png'
                        // 'https://f.ptcdn.info/298/073/000/qs7t6ibhscUkbPBmH8t-o.jpg',
                        ,
                        fit: BoxFit.cover,
                        // scale: 25.0,
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
