import 'package:flutter/material.dart';
import 'package:flutter_application_pass/commom/constants/app_color.dart';
import 'package:flutter_application_pass/commom/constants/app_text_styles.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.colorSecundary,
      ),
      body: Align(
        child: Column(
          children: [
            const SizedBox(
              height: 40.0,
            ),
            Expanded(
              child: Container(
                alignment: Alignment.topRight,
                color: AppColor.colorWhite,
                child: Image.asset('assets/imagens/navenfeite.png'),
              ),
            ),
            Expanded(
              flex: 5,
              child: Text('Acessar',
                  style: AppTextStyler.mediumText
                      .copyWith(color: AppColor.colorSecundary)),
            ),
            Material(
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              child: Ink(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: AppColor.colorLista)),
                child: InkWell(
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  onTap: () {},
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    alignment: Alignment.center,
                    height: 45.0,
                    child: const Text('Enter'),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Image.asset('assets/imagens/footerenfeite.png'),
            const SizedBox(
              height: 40.0,
            ),
          ],
        ),
      ),
    );
  }
}
