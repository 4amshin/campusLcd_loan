import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lcd_loan/core.dart';

class LoginController extends State<LoginView> implements MvcController {
  static late LoginController instance;
  late LoginView view;

  @override
  void initState() {
    instance = this;
    log("Login Page");
    log("Current User = ${currentUser?.email}");
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  final currentUser = FirebaseAuth.instance.currentUser;

  //login textfield variable
  String? email;
  String? password;

  //execute login operation
  doLogin() async {
    log("Email: $email");
    log("Password: $password");

    log("Try to Login....");
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email!,
        password: password!,
      );
      if (!currentUser!.emailVerified) {
        showSnackbarMessage("Email belum diverifikasi");
      }
      Get.offAll(const StMainNavigationView());

      // else if (currentUser == null) {
      //   showSnackbarMessage("User Null");
      // }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        showSnackbarMessage('Pengguna tidak ditemukan');
      } else if (e.code == 'invalid-email') {
        showSnackbarMessage('Email tidak terdaftar');
      } else if (e.code == 'wrong-password') {
        showSnackbarMessage("Password anda salah");
      }
    }
  }

  toRegisterView() {
    Get.offAll(const RegisterView());
  }

  void showSnackbarMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.redAccent,
        content: Text(
          message,
          style: GoogleFonts.openSans(fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
