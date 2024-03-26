import 'package:equatable/equatable.dart';

class SessionEntity extends Equatable {
  const SessionEntity({
    required this.accessToken,
    required this.expiresIn,
    required this.refreshToken,
    required this.providerToken,
    required this.providerRefreshToken,
  });

  final String? providerToken;
  final String? providerRefreshToken;
  final String? accessToken;
  final int? expiresIn;
  final String? refreshToken;

  @override
  List<Object?> get props => [
        providerToken,
        providerRefreshToken,
        accessToken,
        expiresIn,
        refreshToken,
      ];
}
