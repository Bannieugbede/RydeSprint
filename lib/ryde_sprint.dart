import 'package:flutter/material.dart';
import 'package:ryde_sprint/features/authentications/controllers.onboarding/splash_screen.dart';
import 'package:ryde_sprint/utils/theme/theme.dart';

class RydeSprint extends StatelessWidget {
  const RydeSprint({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Swift Cart',
      themeMode: ThemeMode.system,
      theme: ZAppTheme.lightTheme,
      darkTheme: ZAppTheme.darkTheme,
      home: const SplashViewScreen(),
    );
  }
}
