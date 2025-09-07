import 'package:almanhal/features/auth/domain/entities/user.dart';

abstract class AuthRepo {
  Future<UserEntitie> register({
    required String email,
    required String name,
    required String password,
  });
  Future<UserEntitie> login({required String email, required String password});
  Future<void> logOut();
}
