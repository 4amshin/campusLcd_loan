import 'package:flutter/material.dart';
import 'package:lcd_loan/core.dart';

class AtRegisterContent extends StatelessWidget {
  const AtRegisterContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RegisterController controller = RegisterController.instance;
    return Column(
      children: [
        const AtTitle(),
        const SizedBox(height: 35),
        AtTextField(
          iconUrl: 'user.svg',
          hint: 'Nama Lengkap',
          validator: Validator.required,
          onChanged: (value) {
            controller.fullName = value;
          },
        ),
        AtTextField(
          iconUrl: 'password-check.svg',
          hint: 'NIM',
          validator: Validator.required,
          onChanged: (value) {
            controller.nim = value;
          },
        ),
        AtTextField(
          iconUrl: 'sms.svg',
          hint: 'Email',
          validator: Validator.email,
          autofillHints: const [AutofillHints.email],
          onChanged: (value) {
            controller.email = value;
          },
        ),
        AtTextField(
          iconUrl: 'key.svg',
          hint: 'Password',
          validator: Validator.required,
          obscure: true,
          showPasswordIcon: true,
          onChanged: (value) {
            controller.password = value;
          },
        ),
        const SizedBox(height: 20),
        AtRegistrationButton(
          onTap: () => controller.doRegister(),
        ),
        const SizedBox(height: 20),
        AtAccountConfirmation(
          onTap: () => controller.toLoginView(),
        ),
      ],
    );
  }
}
