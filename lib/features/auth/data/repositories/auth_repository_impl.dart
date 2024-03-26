import 'package:dartz/dartz.dart';
import 'package:sfh/core/error/exception.dart';
import 'package:sfh/core/error/failures.dart';
import 'package:sfh/core/services/services.dart';
import 'package:sfh/features/auth/data/models/verify_otp_request_model.dart';
import 'package:sfh/features/auth/domain/domain.dart';

class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl(this._service);

  final CloudService _service;

  @override
  Future<Either<Failure, Unit>> signUp(String email) async {
    try {
      await _service.signUp(email);
      return const Right(unit);
    } on CloudException catch (e) {
      return Left(CloudFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, AuthEntity>> verifyOtp(
    VerifyOtpRequestEntity params,
  ) async {
    try {
      final req = VerifyOtpRequestModel(
        email: params.email,
        otp: params.otp,
      );

      final res = await _service.verifyOtp(req);

      return Right(res);
    } on CloudException catch (e) {
      return Left(CloudFailure(e.message));
    }
  }
}
