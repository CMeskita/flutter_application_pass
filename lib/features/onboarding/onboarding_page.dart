import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_pass/commom/constants/app_color.dart';
import 'package:flutter_application_pass/commom/constants/app_text_styles.dart';

import '../../commom/widgets/primary_button.dart';
import '../../commom/widgets/primary_textbutton.dart';
import '../../commom/widgets/primary_textfild.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.colorWhite,
      appBar: AppBar(
        backgroundColor: AppColor.colorSecundary,
      ),
      body: ListView(
        children: [
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.topRight,
              child: Image.asset('assets/imagens/navenfeite.png'),
            ),
          ),
          Text('Acessar',
              textAlign: TextAlign.center,
              style: AppTextStyler.mediumText
                  .copyWith(color: AppColor.colorSecundary)),
          Expanded(
            flex: 3,
            child: Container(
              color: AppColor.colorWhite,
              child: Image.asset('assets/imagens/CapaTransicaoCinza.png'),
            ),
          ),
          const Form(
            child: Column(
              children: [
                PrimaryTextFild(),
              ],
            ),
          ),

          //const TextField(),
          Align(
            alignment: Alignment.bottomLeft,
            child: PrimaryTextButton(
              onPressed: () => log('tape'),
              children: [
                Text(
                  'Cadastrar',
                  style: AppTextStyler.verysmallText
                      .copyWith(color: AppColor.colorBlack),
                ),
              ],
            ),
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
          const AppFooter(),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }
}

class AppFooter extends StatelessWidget {
  const AppFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/imagens/footerenfeite.png');
  }
}
