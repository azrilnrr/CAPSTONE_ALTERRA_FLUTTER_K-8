import 'package:flutter/material.dart';
import '../../config/theme.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({Key? key}) : super(key: key);
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
                height: 75,
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                  ),
                ),
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
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Icon(
                          Icons.shopping_bag_outlined,
                          color: primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Text(
                  'Category',
                  style: poppinsJudul,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: SizedBox(
                    height: 87,
                    width: 94,
                    child: Image.network(
                      'https://images.unsplash.com/photo-1532453288672-3a27e9be9efd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Text(
                  'Promo Shopping',
                  style: poppinsJudul,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Container(
                    height: 70,
                    width: 200,
                    color: secondaryColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Text(
                  'Best Selling',
                  style: poppinsJudul,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Card(
                  child: Container(
                    width: 152,
                    height: 188,
                    padding: const EdgeInsets.fromLTRB(0, 0, 11, 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 116,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: const DecorationImage(
                              image: NetworkImage(
                                'https://images.unsplash.com/photo-1593821684772-6865bb9413a0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=435&q=80',
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Padding(
                          padding: const EdgeInsets.all(4),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Top Endek',
                                style: poppinsJudul.copyWith(fontSize: 12),
                              ),
                              const Text('Rp. 26.000'),
                              const Text('4.9 * | 23 Terjual'),
                            ],
                          ),
                        )
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

  // Widget buildCategory() {
  //   return ListView.builder(
  //     scrollDirection: Axis.horizontal,
  //     itemCount: 4,
  //     itemBuilder: (BuildContext context, int index) {
  //       return ClipRRect(
  //         borderRadius: BorderRadius.circular(20.0),
  //         child: SizedBox(
  //           height: 87,
  //           width: 94,
  //           child: Image.network(
  //             'https://images.unsplash.com/photo-1532453288672-3a27e9be9efd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80',
  //             fit: BoxFit.cover,
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }

  // Widget buildPromo() {
  //   return ListView.builder(
  //     scrollDirection: Axis.horizontal,
  //     itemCount: 4,
  //     itemBuilder: (BuildContext context, int index) {
  //       return ClipRRect(
  //         borderRadius: BorderRadius.circular(5.0),
  //         child: Container(
  //           height: 70,
  //           width: 200,
  //           color: secondaryColor,
  //         ),
  //       );
  //     },
  //   );
  // }

  // Widget buildCard() {
  //   return GridView.builder(
  //     gridDelegate:
  //         const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
  //     itemCount: 4,
  //     itemBuilder: (BuildContext context, int index) {
  //       return Card(
  //         child: Container(
  //           width: 152,
  //           height: 188,
  //           padding: const EdgeInsets.fromLTRB(0, 0, 11, 0),
  //           decoration: BoxDecoration(
  //             borderRadius: BorderRadius.circular(5),
  //           ),
  //           child: Column(
  //             children: [
  //               Image.network(
  //                 'https://images.unsplash.com/photo-1532453288672-3a27e9be9efd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80',
  //                 width: 152,
  //                 height: 116,
  //               ),
  //               const SizedBox(height: 8),
  //               Padding(
  //                 padding: const EdgeInsets.all(4),
  //                 child: Column(
  //                   crossAxisAlignment: CrossAxisAlignment.start,
  //                   children: [
  //                     Text(
  //                       'Top Endek',
  //                       style: poppinsJudul.copyWith(fontSize: 12),
  //                     ),
  //                     const Text('Rp. 26.000'),
  //                     const Text('4.9 * | 23 Terjual'),
  //                   ],
  //                 ),
  //               )
  //             ],
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }
}
