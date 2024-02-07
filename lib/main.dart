import 'package:flutter/material.dart';
import 'package:med_link/core/di/dependency_injection.dart';
import 'package:med_link/core/routing/app_router.dart';
import 'package:med_link/med_link.dart';

void main() {
  setupGetIt();
  runApp(MedLink(
    appRouter: AppRouter(),
  ));
}
