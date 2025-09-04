import 'package:almanhal/features/auth/domain/entities/user.dart';

class UserModel {
  final String email;
  final String name;

  UserModel({required this.email, required this.name});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      email: json['email'] as String,
      name: json['name'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {'email': email, 'name': name};
  }

  factory UserModel.fromSupabaseUser(User user) {
    return UserModel(
      id: user.id,
      email: user.email ?? '',
      name:
          (user.userMetadata?['name'] as String?) ??
          user.email?.split('@').first ??
          'Unknown User',
    );
  }
  UserEntitie toEntitie() {
    return UserEntitie(email: email, name: name);
  }
}
