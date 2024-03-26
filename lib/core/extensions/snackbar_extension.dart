import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

extension SnackBarExtension on BuildContext {
  void showGenericErrorSnackBar() {
    snackBar(
      this,
      title: 'Something went wrong, please try again later',
      backgroundColor: Colors.red,
      textColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: radius(8)),
      margin: const EdgeInsets.all(16),
    );
  }
}
