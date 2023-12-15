import 'package:flutter/material.dart';
import 'commom/themes/default_theme.dart';
import 'features/onboarding/onboarding_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: defaultTheme,
      home: const OnboardingPage(),
    );
  }
}
