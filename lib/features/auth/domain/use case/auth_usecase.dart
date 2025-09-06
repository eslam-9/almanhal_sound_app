import 'package:almanhal/features/auth/domain/entities/user.dart';
import 'package:almanhal/features/auth/domain/repo/auth_repo.dart';

class AuthUsecase {
  final AuthRepo authRepo;

  AuthUsecase({required this.authRepo});

  Future<UserEntitie> login({
    required String email,
    required String password,
  }) async {
    try {
      return authRepo.login(email: email, password: password);
    } catch (e) {
      throw Exception('Authentication failed');
    }
  }

  Future<UserEntitie> register({
    required String email,
    required String name,
    required String password,
  }) async {
    try {
      return authRepo.register(email: email, name: name, password: password);
    } catch (e) {
      throw Exception('Authentication failed');
    }
  }
}
