// ignore_for_file: one_member_abstracts

import 'package:dartz/dartz.dart';
import 'package:sfh/core/error/failures.dart';

abstract class Usecase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
