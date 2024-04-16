import 'package:flutter/material.dart';
import 'package:ryde_sprint/features/authentications/screens/signup/moble_num_reg_screen.dart';
import 'package:ryde_sprint/utils/constants/colors.dart';
import 'package:ryde_sprint/utils/constants/text_strings.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ZColors.bg,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/images/offset.png',
            width: context.width,
            height: context.height,
            fit: BoxFit.cover,
          ),
          Container(
            width: context.width,
            height: context.height,
            color: Colors.black.withOpacity(0.8),
          ),
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 80),
                Image.asset(
                  'assets/images/rydesprint01.png',
                  width: context.width * 0.50,
                ),
                const Spacer(),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        context.push(const MobileNumRegScreen());
                      },
                      child: const Text(
                        ZTexts.signIn,
                        style: TextStyle(
                          fontSize: 16,
                          color: ZColors.primaryTextW,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text(
                        ZTexts.signUp,
                        style: TextStyle(
                          fontSize: 16,
                          color: ZColors.primaryTextW,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
