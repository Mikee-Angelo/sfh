import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sfh/core/utils/constants.dart';
import 'package:sfh/gen/assets.gen.dart';
import 'package:sfh/l10n/l10n.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final l10n = context.l10n;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Assets.img.fullLogo.image(),
              const SizedBox(height: 32),
              Assets.img.onboarding.image(height: 300),
              const SizedBox(height: 24),
              Text(
                l10n.onboardingTitle,
                style: theme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  l10n.onboardingDescription,
                  textAlign: TextAlign.center,
                  style: theme.bodyMedium,
                ),
              ),
              const Spacer(),
              AppButton(
                color: Constants.primaryColor,
                textColor: Colors.white,
                width: double.infinity,
                elevation: 0,
                onTap: () {},
                text: l10n.onboardingGetStarted,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
