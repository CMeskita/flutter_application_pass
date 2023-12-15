import 'package:flutter/material.dart';

import '../commom/constants/app_color.dart';
import '../commom/constants/app_text_styles.dart';

class PrimeryButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;

  const PrimeryButton({
    super.key,
    this.onPressed,
    required this.text,
  });
  final BorderRadius _borderRadius =
      const BorderRadius.all(Radius.circular(10.0));

  @override
  Widget build(BuildContext context) {
    return Ink(
      height: 45.0,
      width: 150.0,
      decoration: BoxDecoration(
        borderRadius: _borderRadius,
        gradient: LinearGradient(
          colors:
              onPressed != null ? AppColor.colorLista : AppColor.colorListagray,
        ),
      ),
      child: InkWell(
        borderRadius: _borderRadius,
        onTap: onPressed,
        child: Align(
          child: Text(text,
              style: AppTextStyler.smallText
                  .copyWith(color: AppColor.colorSecundary)),
        ),
      ),
    );
  }
}
