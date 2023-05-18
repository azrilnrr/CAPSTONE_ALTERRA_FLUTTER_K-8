import 'package:capstone_flutter/config/theme.dart';
import 'package:capstone_flutter/view/lupa_password_screen.dart';
import 'package:capstone_flutter/view/register_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                height: 130,
                width: 400,
                color: secondaryColor,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Login dan nikmati fitur yang kami sediakan!',
                          maxLines: 2,
                          style: poppinsKecil.copyWith(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: primaryColor,
                        radius: 40,
                        // child: Image.asset('assets/logo.png'),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),
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
                      decoration: const InputDecoration(
                        hintText: 'Username@gmail.com',
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(),
                      ),
                      style: poppinsKecil,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Password',
                      style: poppinsKecil.copyWith(
                          fontSize: 12, color: blackColor),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Username@gmail.com',
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(),
                      ),
                      style: poppinsKecil,
                    ),
                    const SizedBox(height: 30),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const LupaPasswordScreen()));
                      },
                      child: Text(
                        'Lupa Password ?',
                        style: poppinsKecil.copyWith(
                            fontSize: 12, color: secondaryColor),
                      ),
                    ),
                    const SizedBox(height: 20),
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
                            'Sign In',
                            style: poppinsKecil.copyWith(),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Belum punya akun? ',
                          style: poppinsKecil.copyWith(
                              fontSize: 12, color: secondaryColor),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const RegisterScreen()));
                          },
                          child: Text(
                            'Sign Up',
                            style: poppinsKecil.copyWith(
                                fontWeight: FontWeight.bold,
                                color: secondaryColor),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
