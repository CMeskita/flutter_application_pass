import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_pass/commom/constants/app_color.dart';
import 'package:flutter_application_pass/commom/constants/app_text_styles.dart';

import '../../commom/widgets/primary_button.dart';
import '../../commom/widgets/primary_textbutton.dart';

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
          Expanded(
            child: Text('Acessar',
                textAlign: TextAlign.center,
                style: AppTextStyler.mediumText
                    .copyWith(color: AppColor.colorSecundary)),
          ),
          const Form(
            child: Column(
              children: [
                PrimaryTextFild(),
              ],
            ),
          ),

          //const TextField(),
          PrimaryTextButton(
            onPressed: () => log('tape'),
            children: [
              Text(
                'Cadastrar',
                textAlign: TextAlign.start,
                style: AppTextStyler.verysmallText
                    .copyWith(color: AppColor.colorBlack),
              ),
            ],
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
          Image.asset('assets/imagens/footerenfeite.png'),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }
}

class PrimaryTextFild extends StatefulWidget {
  const PrimaryTextFild({
    super.key,
  });

  @override
  State<PrimaryTextFild> createState() => _PrimaryTextFildState();
}

class _PrimaryTextFildState extends State<PrimaryTextFild> {
  final defaultBorder = const OutlineInputBorder();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Email",
        focusedBorder: defaultBorder.copyWith(
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
        errorBorder: defaultBorder,
        focusedErrorBorder: defaultBorder,
        enabledBorder: defaultBorder,
        disabledBorder: defaultBorder.copyWith(
          borderSide: const BorderSide(
            color: Colors.yellow,
          ),
        ),
      ),
    );
  }
}
