import 'package:capstone_flutter/config/theme.dart';
import 'package:capstone_flutter/view/account/change_numphone_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'change_address_screen.dart';
import 'change_email_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffF7F5F5),
      appBar: AppBar(
        backgroundColor: const Color(0xffF7F5F5),
        elevation: 0,
        title: Text(
          'Profile',
          style: poppinsKecil.copyWith(
            fontSize: 18,
            color: blackColor,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20.0),
                  ),
                ),
                builder: (context) {
                  return SizedBox(
                    height: 280,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          title: Center(
                            child: Text(
                              'Ambil Foto',
                              style: poppinsKecil.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: blackColor,
                              ),
                            ),
                          ),
                          onTap: () {},
                        ),
                        const Divider(),
                        ListTile(
                          title: Center(
                            child: Text(
                              'Pilih dari Galeri',
                              style: poppinsKecil.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: blackColor,
                              ),
                            ),
                          ),
                          onTap: () {},
                        ),
                        const Divider(),
                        ListTile(
                          title: Center(
                            child: Text(
                              'Lihat foto',
                              style: poppinsKecil.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: blackColor,
                              ),
                            ),
                          ),
                          onTap: () {},
                        ),
                        const Divider(),
                        ListTile(
                          title: Center(
                            child: Text(
                              'Batal',
                              style: poppinsKecil.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.w100,
                                color: const Color(0xff5E5E5E),
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            child: Center(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: const Color(0xffD9D9D9),
                    radius: 60,
                    child: Image.asset(
                      'assets/icon/setting_icon/photo_camera.png',
                      scale: 3,
                    ),
                  ),
                  SizedBox(
                    height: size.height * .02,
                  ),
                  Text(
                    'Ubah Foto',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 34),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tentang Anda',
                    style: poppinsKecil.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff5E5E5E),
                    ),
                  ),
                  const SizedBox(height: 28),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Email',
                        style: poppinsKecil.copyWith(
                          fontSize: 14,
                          color: const Color(0xff5E5E5E),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const ChangeEmailScreen();
                              },
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            Text(
                              'userexample@gmail.com',
                              style: poppinsKecil.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: blackColor,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: size.width * .05,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 28),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'No Telpon',
                        style: poppinsKecil.copyWith(
                          fontSize: 14,
                          color: const Color(0xff5E5E5E),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const ChangeNumberScreen();
                              },
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            Text(
                              '0823 1234 5678',
                              style: poppinsKecil.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: blackColor,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: size.width * .05,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 28),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Alamat',
                        style: poppinsKecil.copyWith(
                          fontSize: 14,
                          color: const Color(0xff5E5E5E),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const ChangeAddressScreen();
                              },
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            Text(
                              'Maluku',
                              style: poppinsKecil.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: blackColor,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: size.width * .05,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
