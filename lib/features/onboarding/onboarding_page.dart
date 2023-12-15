import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_pass/commom/constants/app_color.dart';
import 'package:flutter_application_pass/commom/constants/app_text_styles.dart';

import '../../widgets/primary_button.dart';
import '../../widgets/primary_textbutton.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.colorWhite,
      appBar: AppBar(
        backgroundColor: AppColor.colorSecundary,
      ),
      body: Align(
        child: Column(
          children: [
            const SizedBox(height: 40.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.topRight,
                child: Image.asset('assets/imagens/navenfeite.png'),
              ),
            ),
            Expanded(
              flex: 5,
              child: Text('Acessar',
                  style: AppTextStyler.mediumText
                      .copyWith(color: AppColor.colorSecundary)),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: PrimeryButton(
                text: 'Enter',
                onPressed: () {
                  log('mensage');
                },
              ),
            ),
            PrimaryTextButton(
              onPressed: () => log('tape'),
              children: [
                Text(
                  'Gurade Suas Senhas com',
                  style: AppTextStyler.verysmallText
                      .copyWith(color: AppColor.colorBlack),
                ),
                Text(
                  ' Segurança',
                  style: AppTextStyler.verysmallText
                      .copyWith(color: AppColor.colorBlack),
                ),
              ],
            ),
            Image.asset('assets/imagens/footerenfeite.png'),
            const SizedBox(height: 40.0),
          ],
        ),
      ),
    );
  }
}
