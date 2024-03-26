import 'package:dartz/dartz.dart';
import 'package:sfh/core/error/failures.dart';
import 'package:sfh/core/usecases/usecase.dart';
import 'package:sfh/features/auth/auth.dart';

class VerifyOtpUsecase extends Usecase<AuthEntity, VerifyOtpRequestEntity> {
  VerifyOtpUsecase(this.repository);

  final AuthRepository repository;

  @override
  Future<Either<Failure, AuthEntity>> call(VerifyOtpRequestEntity params) {
    return repository.verifyOtp(params);
  }
}
