import 'package:capstone_flutter/config/theme.dart';
import 'package:capstone_flutter/view/account/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffF7F5F5),
      appBar: AppBar(
        backgroundColor: const Color(0xffF7F5F5),
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const ProfileScreen();
                  },
                ),
              );
            },
            child: Center(
              child: Column(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/profil.png'),
                    radius: 65,
                  ),
                  SizedBox(
                    height: size.height * .02,
                  ),
                  Text(
                    'User',
                    style: GoogleFonts.poppins(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: size.height * .05),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Email',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'user@example.com',
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(width: size.width * .04),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: size.width * .05,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'No. Hp',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '0823 1234 5678',
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(width: size.width * .04),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: size.width * .05,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Alamat',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Maluku',
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(width: size.width * .04),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: size.width * .05,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 15,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          width: size.width / 9,
                          child: Image.asset(
                            'assets/icon/setting_icon/receipt_long.png',
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Transaksi',
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 60,
                    vertical: 20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          width: size.width / 9,
                          child: Image.asset(
                            'assets/icon/setting_icon/newspaper.png',
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Artikel',
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: size.width * .06,
                        child: Image.asset(
                          'assets/icon/setting_icon/settings.png',
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Setting',
                        style: poppinsKecil.copyWith(
                          fontSize: 20,
                          color: blackColor,
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: size.width * .05,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
