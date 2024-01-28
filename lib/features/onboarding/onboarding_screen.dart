// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:med_link/core/theming/style.dart';

import 'widgets/doctor_image_and_text.dart';
import 'widgets/get_started_button.dart';
import 'widgets/med_logo_and_name.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.only(
              top: 30.h,
              bottom: 30.h,
            ),
            child: Column(
              children: [
                const MedLogoAndName(),
                SizedBox(
                  height: 30.h,
                ),
                const DoctorImageAndText(),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30.w,
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Manage and schedule all of your medical appointments easily with MedLink to get a new experience.',
                        style: TextStyles.font13grayregular,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      const GetStartedButton(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
