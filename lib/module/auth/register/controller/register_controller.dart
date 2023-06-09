import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lcd_loan/core.dart';

class RegisterController extends State<RegisterView> implements MvcController {
  static late RegisterController instance;
  late RegisterView view;

  @override
  void initState() {
    instance = this;
    log("Register Page");
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  //textfield input variable
  String? fullName;
  String? nim;
  String? email;
  String? password;

  //function for register user
  doRegister() async {
    if (fullName?.isEmpty ?? true) {
      showSnackbarMessage('Masukkkan nama lengkap anda');
      return;
    }

    if (nim?.isEmpty ?? true) {
      showSnackbarMessage('Masukkan NIM anda');
      return;
    }

    if (email?.isEmpty ?? true) {
      showSnackbarMessage('Masukkkan Email yang benar');
      return;
    }

    if (password == null || password!.length < 6) {
      showSnackbarMessage('Kata Sandi minimal 6 karakter');
      return;
    }

    try {
      log("Register New User");
      await AuthService.createNewUser(
        email: email!,
        password: password!,
      );

      log("Save Student Data");
      await AuthService.addStudentData(
        email: email!,
        name: fullName!,
        nim: nim!,
      );

      Get.to(const EmailVerificationView());
    } catch (e) {
      showSnackbarMessage(e.toString());
    }
  }

  toLoginView() {
    Get.offAll(const LoginView());
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
