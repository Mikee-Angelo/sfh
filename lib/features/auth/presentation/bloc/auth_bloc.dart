import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sfh/core/bloc/base_state.dart';
import 'package:sfh/features/auth/domain/domain.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._signUp, this._verifyOtp) : super(AuthInitial()) {
    on<OnSignUp>(_onSignUp);
    on<OnVeriyOtp>(_onVerifyOtp);
  }

  final SignupUsecase _signUp;
  final VerifyOtpUsecase _verifyOtp;

  FutureOr<void> _onSignUp(
    OnSignUp event,
    Emitter<AuthState> emit,
  ) async {
    emit(const LoadingState());

    final res = await _signUp(event.email);

    res.fold(
      (l) => emit(ErrorState(l)),
      (r) => emit(SuccessState(r)),
    );
  }

  FutureOr<void> _onVerifyOtp(
    OnVeriyOtp event,
    Emitter<AuthState> emit,
  ) async {
    emit(const LoadingState());

    final res = await _verifyOtp(event.otp);

    res.fold(
      (l) => emit(ErrorState(l)),
      (r) => emit(SuccessState(r)),
    );
  }
}
