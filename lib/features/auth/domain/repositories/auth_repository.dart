import 'package:dartz/dartz.dart';
import 'package:sfh/core/error/failures.dart';
import 'package:sfh/features/auth/auth.dart';

abstract class AuthRepository {
  Future<Either<Failure, Unit>> signUp(String email);
  Future<Either<Failure, AuthEntity>> verifyOtp(VerifyOtpRequestEntity params);
}
