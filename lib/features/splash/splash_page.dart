import 'package:flutter/material.dart';
import 'package:flutter_application_pass/commom/constants/app_color.dart';
import 'package:flutter_application_pass/commom/constants/app_text_styles.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [AppColor.colorPrimary, AppColor.colorPrimary]),
      ),
      child: Text(
        'PassWall',
        style: AppTextStyler.bigText.copyWith(color: AppColor.colorSecundary),
      ),
    );
  }
}
