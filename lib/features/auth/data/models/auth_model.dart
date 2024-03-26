import 'package:dart_mappable/dart_mappable.dart';
import 'package:sfh/features/auth/domain/entities/entities.dart';

part 'auth_model.mapper.dart';

@MappableClass()
class AuthModel extends AuthEntity with AuthModelMappable {
  const AuthModel({required super.user, required super.session});
}
