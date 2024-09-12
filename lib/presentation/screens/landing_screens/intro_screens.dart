import 'package:flutter/material.dart';
import 'package:ola_clone/domain/ui_helper/ui_helper.dart';
import 'package:ola_clone/presentation/screens/landing_screens/phone_verify_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 600,
            width: double.infinity,
            color: Colors.green,
          ),
          Container(
            height: 290,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Explore new ways to\ntravel with Ola',
                  style: UiHelper.mTextStyle25(),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PhoneVerifyScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'Continue with Phone Number',
                    style: UiHelper.mTextStyle18(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    minimumSize: Size(700, 60),
                  ),
                ),
                Text(
                  'By Continuing you agree that you have read and accept our T&Cs and Privacy Policy',
                  style: TextStyle(color: Colors.grey.shade600),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
