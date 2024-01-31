// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:med_link/core/theming/style.dart';

class MedLogoAndName extends StatelessWidget {
  const MedLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/svgs/medLink_logo.svg'),
        SizedBox(width: 10.w,),
        Text(
          'MedLink',
          style: TextStyles.font24BlackBold,
        ),
      ],
    );
  }
}
