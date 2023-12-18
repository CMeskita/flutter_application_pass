import 'package:flutter/material.dart';
import 'package:flutter_application_pass/commom/constants/app_text_styles.dart';

import '../../commom/constants/app_color.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

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
          const NewWidget(),
          Text(
            textAlign: TextAlign.center,
            'DashBoard',
            style:
                AppTextStyler.mediumText.copyWith(color: AppColor.colorBlack),
          )
        ],
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.topRight,
        child: Image.asset('assets/imagens/navenfeite.png'),
      ),
    );
  }
}
