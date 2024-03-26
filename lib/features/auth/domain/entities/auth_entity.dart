import 'package:equatable/equatable.dart';
import 'package:sfh/features/auth/auth.dart';

class AuthEntity extends Equatable {
  const AuthEntity({
    required this.user,
    required this.session,
  });

  final UserEntity user;
  final SessionEntity session;

  @override
  List<Object?> get props => [user, session];
}
