import 'package:capstone_flutter/view/widget/carousel_welcome.dart';
import 'package:flutter/material.dart';
import '../../config/theme.dart';

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
              // CarouselView(),
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
                                color: Colors.white,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)))),
                        ),
                      )),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child:
                            // Icon(
                            //   Icons.shop,
                            //   color: primaryColor,
                            // ),
                            Image.asset(
                                'assets/icon/bottom_navigasi_icon/cart.png'),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              const CarouselView(),
              // Center(
              //   child: Card(
              //     shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(20.0)),
              //     child: SizedBox(
              //       height: 167,
              //       width: 310,
              //       child: ClipRRect(
              //         // decoration: const BoxDecoration(
              //         borderRadius: const BorderRadius.only(
              //           topLeft: Radius.circular(20.0),
              //           topRight: Radius.circular(20.0),
              //           bottomLeft: Radius.circular(20.0),
              //           bottomRight: Radius.circular(20.0),
              //         ),
              //         // ),
              //         child: Image.network(
              //           'https://ticket.gwkbali.com/images/ticket/1200%20x%20900.png',
              //           fit: BoxFit.cover,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              // const SizedBox(
              //   height: 24,
              // ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 25.0,
                  top: 24.0,
                ),
                child: Text(
                  'Event',
                  style: poppinsKecil.copyWith(
                      fontSize: 16,
                      color: Color.fromRGBO(48, 48, 48, 1),
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(
                      left: 25.0, right: 25.0, bottom: 17),
                  child: SizedBox(
                    height: 120,
                    // height: 300,
                    // width: 94,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return eventCard();
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            width: 5,
                          );
                        },
                        itemCount: 5),
                  )
                  // eventCard(),
                  ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, bottom: 14.0),
                child: Text(
                  'Shopping',
                  style: poppinsKecil.copyWith(
                      fontSize: 16,
                      color: Color.fromRGBO(48, 48, 48, 1),
                      fontWeight: FontWeight.w600),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(
              //     left: 25.0,
              //     bottom: 17.0,
              //   ),
              //   child: shoppingCard(),
              // ),
              Padding(
                  padding: const EdgeInsets.only(
                      left: 25.0, right: 25.0, bottom: 17),
                  child: SizedBox(
                    height: 87,
                    // height: 300,
                    // width: 94,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return shoppingCard();
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            width: 5,
                          );
                        },
                        itemCount: 5),
                  )
                  // eventCard(),
                  ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, bottom: 14),
                child: Text(
                  'Promo',
                  style: poppinsKecil.copyWith(
                      fontSize: 16,
                      color: Color.fromRGBO(48, 48, 48, 1),
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(
                      left: 25.0, right: 25.0, bottom: 17),
                  child: SizedBox(
                    height: 200,
                    // height: 300,
                    // width: 94,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return promoCard();
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            width: 5,
                          );
                        },
                        itemCount: 5),
                  )
                  // eventCard(),
                  ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 25.0, bottom: 17.0
              //       // right: 24.0,
              //       ),
              //   child: promoCard(),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Card promoCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      child: SizedBox(
        height: 175,
        width: 125,
        child: Stack(
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 96,
                width: 125,
                child: ClipRRect(
                  // decoration: const BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(5.0),
                    topRight: Radius.circular(5.0),
                  ),
                  // ),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1525845859779-54d477ff291f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80',
                    fit: BoxFit.cover,

                    // scale: 1.7,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  'Daster Bali',
                  style: poppinsKecil.copyWith(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  children: [
                    Text(
                      'Rp 34.000',
                      style: poppinsKecil.copyWith(
                          fontSize: 10,
                          color: Color.fromRGBO(48, 48, 48, 1),
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.lineThrough),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Rp 24.000',
                      style: poppinsKecil.copyWith(
                          fontSize: 11,
                          color: Color.fromRGBO(48, 48, 48, 1),
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 9,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 6.0,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 11,
                      color: Color.fromRGBO(194, 129, 62, 1),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      '4.9 | ',
                      style: poppinsKecil.copyWith(
                          fontSize: 11,
                          color: Color.fromRGBO(48, 48, 48, 1),
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      '23 Terjual',
                      style: poppinsKecil.copyWith(
                          fontSize: 11,
                          color: Color.fromRGBO(48, 48, 48, 1),
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              )
            ]),
            Container(
              height: 20,
              width: 30,
              decoration: BoxDecoration(
                  color:
                      thirdColor, // Replace with your desired background color
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(5.0),
                    bottomRight: Radius.circular(5.0),
                  ) // Replace with your desired border radius
                  ),
              child: Text(
                '20%',
                textAlign: TextAlign.center,
                style: poppinsKecil.copyWith(
                    fontSize: 12,
                    color: whiteColor,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ClipRRect shoppingCard() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5.0),
      child: SizedBox(
        height: 87,
        width: 68,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.network(
              'https://images.unsplash.com/photo-1625733143873-d8bec4591192?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80'
              // 'https://f.ptcdn.info/298/073/000/qs7t6ibhscUkbPBmH8t-o.jpg',
              ,
              fit: BoxFit.cover,
              // scale: 25.0,
            ),
            Center(
              child: Text(
                'Pakaian',
                style: poppinsKecil.copyWith(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }

  Card eventCard() {
    return Card(
      // color: Color.fromRGBO(215, 245, 246, 1),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      child: Row(
        children: [
          // CarouselView(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
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
          Padding(
            padding: const EdgeInsets.only(
              top: 15.0,
              right: 35.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    decoration: BoxDecoration(
                      color:
                          thirdColor, // Replace with your desired background color
                      borderRadius: BorderRadius.circular(
                          4.0), // Replace with your desired border radius
                    ),
                    // color: thirdColor,
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
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Text(
                    'Title Event',
                    style: poppinsKecil.copyWith(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Color.fromRGBO(194, 129, 62, 1),
                      size: 15,
                    ),
                    const SizedBox(
                      width: 6.67,
                    ),
                    Text(
                      'Event Location',
                      style: poppinsKecil.copyWith(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
