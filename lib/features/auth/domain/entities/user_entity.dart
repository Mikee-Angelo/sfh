import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  const UserEntity({
    required this.id,
    required this.email,
    required this.name,
    required this.createdAt,
  });

  final String? id;
  final String? email;
  final String? name;
  final String? createdAt;

  @override
  List<Object?> get props => [id, email, name, createdAt];
}
