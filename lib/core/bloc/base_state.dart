import 'package:equatable/equatable.dart';
import 'package:sfh/core/error/failures.dart';
import 'package:sfh/features/auth/auth.dart';

abstract class BaseState extends Equatable implements AuthState {
  const BaseState();

  @override
  List<Object> get props => [];
}

class InitialState extends BaseState {
  const InitialState();
}

class LoadingState extends BaseState {
  const LoadingState();
}

class RetryState extends BaseState {
  const RetryState();
}

class ErrorState extends BaseState {
  const ErrorState(this.error);

  final Failure error;

  @override
  List<Object> get props => [error];
}

class SuccessState<T> extends BaseState {
  const SuccessState(this.data);

  final T? data;
}

class NoInternetConnectionState extends BaseState {
  const NoInternetConnectionState();
}
