import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure();
}

class CloudFailure extends Failure {
  const CloudFailure(this.message);

  final String? message;

  @override
  List<Object?> get props => [message];
}
