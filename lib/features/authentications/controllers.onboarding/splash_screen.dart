import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ryde_sprint/features/authentications/controllers.onboarding/change_language_screen.dart';
import 'package:ryde_sprint/utils/constants/colors.dart';

class SplashViewScreen extends StatefulWidget {
  const SplashViewScreen({super.key});

  @override
  State<SplashViewScreen> createState() => _SplashViewScreenState();
}

class _SplashViewScreenState extends State<SplashViewScreen> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
    super.initState();
    load();
  }

  void load() async {
    await Future.delayed(const Duration(seconds: 3));
    loadNextScreen();
  }

  void loadNextScreen() {
    context.push(const ChangeLanguageScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ZColors.bg,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: context.width,
            height: context.height,
            color: ZColors.primary,
          ),
          Image.asset(
            'assets/images/rydesprint01.png',
            width: context.width * 0.50,
          )
        ],
      ),
    );
  }
}
