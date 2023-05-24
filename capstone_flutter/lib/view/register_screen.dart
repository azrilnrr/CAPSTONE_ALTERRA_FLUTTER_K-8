import 'package:capstone_flutter/config/theme.dart';
import 'package:capstone_flutter/view/login_screen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 130,
                width: 400,
                color: secondaryColor,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'REGISTER',
                        maxLines: 2,
                        style: poppinsKecil.copyWith(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Lakukan Pendaftaran akun agar kamu dapat mengikuti perkembangan kami!',
                        maxLines: 2,
                        style: poppinsKecil.copyWith(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: Image.asset(
                  'assets/logo-2.png',
                  width: 200,
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                  right: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email atau Username',
                      style: poppinsKecil.copyWith(
                          fontSize: 12, color: blackColor),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Username@gmail.com',
                        border: OutlineInputBorder(),
                      ),
                      style: poppinsKecil,
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Email atau Username',
                      style: poppinsKecil.copyWith(
                          fontSize: 12, color: blackColor),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Username@gmail.com',
                        border: OutlineInputBorder(),
                      ),
                      style: poppinsKecil,
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Email atau Username',
                      style: poppinsKecil.copyWith(
                          fontSize: 12, color: blackColor),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Username@gmail.com',
                        border: OutlineInputBorder(),
                      ),
                      style: poppinsKecil,
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Email atau Username',
                      style: poppinsKecil.copyWith(
                          fontSize: 12, color: blackColor),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Username@gmail.com',
                        border: OutlineInputBorder(),
                      ),
                      style: poppinsKecil,
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width * 1,
                        height: 48,
                        decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            'REGISTER',
                            style: poppinsKecil.copyWith(),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Sudah punya akun? ',
                          style: poppinsKecil.copyWith(
                              fontSize: 12, color: secondaryColor),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                          },
                          child: Text(
                            'Sign In',
                            style: poppinsKecil.copyWith(
                                fontWeight: FontWeight.bold,
                                color: secondaryColor),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
