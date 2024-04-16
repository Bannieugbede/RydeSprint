import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:ryde_sprint/utils/constants/colors.dart';
import 'package:ryde_sprint/utils/constants/text_strings.dart';

class MobileNumRegScreen extends StatefulWidget {
  const MobileNumRegScreen({super.key});

  @override
  State<MobileNumRegScreen> createState() => _MobileNumRegScreenState();
}

class _MobileNumRegScreenState extends State<MobileNumRegScreen> {
  //
  FlCountryCodePicker countryCodePicker = const FlCountryCodePicker();
  TextEditingController txtMobile = TextEditingController();
  late CountryCode countryCode;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    countryCode = countryCodePicker.countryCodes
        .firstWhere((element) => element.name == "Nigeria");
  }

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
              'Enter Mobile Number',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w800,
                color: ZColors.primaryText,
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () async {
                    final code =
                        await countryCodePicker.showPicker(context: context);
                    if (code != null) {
                      countryCode = code;
                      setState(() {});
                    }
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 30,
                        height: 20,
                        child: countryCode.flagImage(),
                      ),
                      Text(
                        " ${countryCode.dialCode}",
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: TextField(
                    controller: txtMobile,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.grey[400]),
                        contentPadding: EdgeInsets.zero,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        hintText: '8123456789'),
                  ),
                ),
              ],
            ),
            const Divider(),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'By continuing, i confirm that i have & agree to the',
                  style: TextStyle(
                    fontSize: 11,
                    color: ZColors.secondaryText,
                  ),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Terms & conditions',
                  style: TextStyle(
                    fontSize: 11,
                    color: ZColors.primaryText,
                  ),
                ),
                Text(
                  ' and ',
                  style: TextStyle(
                    fontSize: 11,
                    color: ZColors.secondaryText,
                  ),
                ),
                Text(
                  'Privacy policy',
                  style: TextStyle(
                    fontSize: 11,
                    color: ZColors.primaryText,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // context.push(const MobileNumRegScreen());
                  },
                  child: const Text(
                    ZTexts.tContinue,
                    style: TextStyle(
                      fontSize: 16,
                      color: ZColors.primaryTextW,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
