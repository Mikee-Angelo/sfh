import 'package:dart_mappable/dart_mappable.dart';
import 'package:sfh/features/auth/domain/entities/entities.dart';

part 'session_model.mapper.dart';

@MappableClass()
class SessionModel extends SessionEntity with SessionModelMappable {
  const SessionModel({
    required super.accessToken,
    required super.expiresIn,
    required super.refreshToken,
    required super.providerToken,
    required super.providerRefreshToken,
  });
}
