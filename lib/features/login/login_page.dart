import 'dart:developer';
import 'package:flutter/material.dart';
import '../../commom/constants/app_color.dart';
import '../../commom/constants/app_text_styles.dart';
import '../../commom/widgets/primary_button.dart';
import '../../commom/widgets/primary_textfild.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
          Text('Informe o Código',
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
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Form(
              child: Column(
                children: [
                  PrimaryTextFild(),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: PrimeryButton(
              text: 'Enter',
              onPressed: () {
                log('mensage');
              },
            ),
          ),
          Image.asset('assets/imagens/footerenfeite.png'),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
