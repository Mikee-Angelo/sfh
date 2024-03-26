import 'package:dartz/dartz.dart';
import 'package:sfh/core/error/failures.dart';
import 'package:sfh/core/usecases/usecase.dart';
import 'package:sfh/features/auth/domain/repositories/repositories.dart';

class SignupUsecase extends Usecase<Unit, String> {
  SignupUsecase(this._repo);

  final AuthRepository _repo;

  @override
  Future<Either<Failure, Unit>> call(String params) async {
    return _repo.signUp(params);
  }
}
