import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:pinput/pinput.dart';
import 'package:sfh/core/bloc/base_state.dart';
import 'package:sfh/core/extensions/extensions.dart';
import 'package:sfh/core/utils/constants.dart';
import 'package:sfh/features/auth/auth.dart';

class OtpPageArgs {
  const OtpPageArgs({required this.email});

  final String email;
}

class OtpPage extends StatelessWidget {
  OtpPage({required this.args, super.key});

  final OtpPageArgs args;
  static String routeName = '/otp';

  final _otp = TextEditingController();
  final _form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is SuccessState) {}

        if (state is ErrorState) {
          context.showGenericErrorSnackBar();
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(),
          body: Padding(
            padding: Constants.basePadding,
            child: Form(
              key: _form,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Enter OTP',
                    style: theme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'An 6 digit code has been sent to\n${args.email}',
                    style: theme.bodyMedium,
                  ),
                  const SizedBox(height: 32),
                  Pinput(
                    controller: _otp,
                    enabled: state is! LoadingState,
                    length: 6,
                  ),
                  const SizedBox(height: 32),
                  AppButton(
                    enabled: state is! LoadingState,
                    disabledColor: Constants.primaryColor.withOpacity(0.5),
                    color: Constants.primaryColor,
                    textColor: Colors.white,
                    enableScaleAnimation: false,
                    width: double.infinity,
                    elevation: 0,
                    onTap: () => _onProceed(context),
                    text: 'Proceed',
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _onProceed(BuildContext context) {
    if (_form.currentState!.validate()) {
      final req = VerifyOtpRequestEntity(email: args.email, otp: _otp.text);
      context.read<AuthBloc>().add(OnVeriyOtp(req));
    }
  }
}
