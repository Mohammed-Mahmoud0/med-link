import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:med_link/core/di/dependency_injection.dart';
import 'package:med_link/core/routing/app_router.dart';
import 'package:med_link/med_link.dart';

Future<void> main() async {
  setupGetIt();
  // To fix texts being hidden bug in flutter_screenutil in release mode.
  await ScreenUtil.ensureScreenSize();
  runApp(MedLink(
    appRouter: AppRouter(),
  ));
}
