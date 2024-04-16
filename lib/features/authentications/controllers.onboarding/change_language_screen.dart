import 'package:flutter/material.dart';
import 'package:ryde_sprint/features/authentications/controllers.onboarding/welcome_screen.dart';
import 'package:ryde_sprint/utils/constants/colors.dart';

class ChangeLanguageScreen extends StatefulWidget {
  const ChangeLanguageScreen({super.key});

  @override
  State<ChangeLanguageScreen> createState() => _ChangeLanguageScreenState();
}

class _ChangeLanguageScreenState extends State<ChangeLanguageScreen> {
  List listArr = [
    "English",
    "Chinese",
    "Arabic",
    "Korea",
    "Hindi",
  ];

  int selectChange = 0;
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Choose language',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w800,
                color: ZColors.primaryText,
              ),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: ListView.builder(
                  itemCount: listArr.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {
                        setState(() {
                          selectChange = index;
                        });
                        context.push(const WelcomeScreen());
                      },
                      title: Text(
                        listArr[index],
                        style: TextStyle(
                            fontSize: 16,
                            color: index == selectChange
                                ? Colors.green
                                : ZColors.primaryText),
                      ),
                      trailing: index == selectChange
                          ? Image.asset('assets/images/CheckTick.png',
                              width: 25)
                          : null,
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
