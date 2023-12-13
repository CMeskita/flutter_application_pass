import 'package:flutter/material.dart';
import 'package:flutter_application_pass/commom/constants/app_color.dart';
import 'package:flutter_application_pass/commom/constants/app_text_styles.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 60.0,
          ),
          Text('PassWords',
              style: AppTextStyler.bigText
                  .copyWith(color: AppColor.colorSecundary)),
          Expanded(
              flex: 3,
              child: Container(
                color: AppColor.colorWhite,
                child: Image.asset('assets/imagens/CapaTransicao.png'),
              ))
        ],
      ),
    );
  }
}
