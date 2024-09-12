import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ola_clone/domain/ui_helper/ui_helper.dart';

class PhoneVerifyScreen extends StatelessWidget {
  const PhoneVerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(
          CupertinoIcons.left_chevron,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            Text(
              'Enter Phone number for verification',
              style: UiHelper.mTextStyle30(),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'This number will be used for all ride-related communication. You shall receive an SMS with code for verification.',
              style: UiHelper.mTextStyle18(
                fontWeight: FontWeight.normal,
                color: Colors.grey.shade600,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            'Next',
            style: UiHelper.mTextStyle18(color: Colors.white),
          ),
          style: ElevatedButton.styleFrom(
              minimumSize: Size(600, 50), backgroundColor: Colors.black),
        ),
      ),
    );
  }
}
