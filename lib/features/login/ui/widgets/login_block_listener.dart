import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:med_link/core/helpers/extensions.dart';
import 'package:med_link/core/routing/routes.dart';
import 'package:med_link/features/login/logic/login_cubit.dart';
import 'package:med_link/features/login/logic/login_state.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/style.dart';

class LoginBlockListener extends StatelessWidget {
  const LoginBlockListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
        listenWhen: (previous, current) =>
            current is Loading || current is Success || current is Error,
        listener: (BuildContext context, state) {
          state.whenOrNull(
            loading: () {
              showDialog(
                context: context,
                builder: (context) => const Center(
                  child: CircularProgressIndicator(
                    color: ColorsManager.mainBlue,
                  ),
                ),
              );
            },
            success: (loginResponse) {
              context.pop;
              context.pushNamed(Routes.homeScreen);
            },
            error: (error) {
              context.pop;
              setupErrorState(context, error);
            }
          );
        },
        child: const SizedBox.shrink());
  }

  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          error,
          style: TextStyles.font15DarkBlueMedium,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it',
              style: TextStyles.font14BlueSemiBold,
            ),
          ),
        ],
      ),
    );
  }
}
