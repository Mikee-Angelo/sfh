import 'package:dart_mappable/dart_mappable.dart';
import 'package:sfh/features/auth/domain/entities/entities.dart';

part 'user_model.mapper.dart';

@MappableClass()
class UserModel extends UserEntity with UserModelMappable {
  const UserModel({
    required super.id,
    required super.email,
    required super.name,
    required super.createdAt,
  });
}
