import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sfh/core/bloc/base_state.dart';
import 'package:sfh/core/extensions/extensions.dart';
import 'package:sfh/core/utils/constants.dart';
import 'package:sfh/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:sfh/features/auth/presentation/pages/otp_page.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});

  static const String routeName = '/signup';

  final _form = GlobalKey<FormState>();
  final _email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return BlocConsumer<AuthBloc, AuthState>(
      listener: (BuildContext context, AuthState state) {
        if (state is SuccessState) {
          Modular.to.pushNamedAndRemoveUntil(
            OtpPage.routeName,
            (_) => false,
            arguments: OtpPageArgs(email: _email.text),
          );
        }

        if (state is ErrorState) {
          context.showGenericErrorSnackBar();
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(),
          body: Padding(
            padding: Constants.basePadding,
            child: IgnorePointer(
              ignoring: state is LoadingState,
              child: Form(
                key: _form,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Create Account',
                      style: theme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Fill up the following to get started',
                      style: theme.bodyMedium,
                    ),

                    const SizedBox(height: 32),

                    //Email Address
                    AppTextField(
                      controller: _email,
                      decoration:
                          const InputDecoration(labelText: 'Email Address'),
                      textFieldType: TextFieldType.EMAIL_ENHANCED,
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
                      onTap: () => _onSignup(context),
                      text: 'Sign Up',
                    ),

                    const SizedBox(height: 16),

                    Align(
                      child: const Text.rich(
                        TextSpan(
                          text: 'Already have an account? ',
                          children: [
                            TextSpan(
                              text: 'Sign in',
                              style: TextStyle(
                                color: Constants.primaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ).onTap(() {}),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void _onSignup(BuildContext context) {
    if (_form.currentState!.validate()) {
      BlocProvider.of<AuthBloc>(context).add(OnSignUp(_email.text));
    }
  }
}
