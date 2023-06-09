import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lcd_loan/core.dart';
import 'package:lcd_loan/module/auth/email_verification/widget/at_resend_button.dart';

class AtEmailVerify extends StatelessWidget {
  const AtEmailVerify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    EmailVerificationController controller =
        EmailVerificationController.instance;
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'Email Verification'),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Link verifikasi telah terkirim ke email ${controller.currentUser!.email}, tolong cek email anda!",
              textAlign: TextAlign.center,
              style: GoogleFonts.openSans(
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20),
            AtResendButton(
              onResend: () => controller.resendEmailVerification(),
            ),
            const SizedBox(height: 20),
            AtAccountConfirmation(
              content: 'Kembali ke halaman ',
              link: 'Login!',
              onTap: () => controller.toLoginView(),
            )
          ],
        ),
      ),
    );
  }
}
