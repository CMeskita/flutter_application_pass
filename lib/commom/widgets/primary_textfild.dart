import 'package:flutter/material.dart';

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
