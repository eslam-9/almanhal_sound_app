import 'package:almanhal/features/auth/domain/entities/user.dart';
import 'package:almanhal/features/auth/domain/repo/auth_repo.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../datasource/supabase_auth.dart';

class AuthRepoImpWithSupabase implements AuthRepo {
  final SupabaseAuth supabaseAuth;

  AuthRepoImpWithSupabase({required this.supabaseAuth});
  @override
  Future<UserEntitie> login({
    required String email,
    required String password,
  }) async {
    try {
      final user = await supabaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return user.toEntitie();
    } catch (e) {
      throw Exception('Authentication failed');
    }
  }

  @override
  Future<UserEntitie> register({
    required String email,
    required String name,
    required String password,
  }) async {
    try {
      final user = await supabaseAuth.signUp(
        email: email,
        password: password,
        name: name,
      );
      return user.toEntitie();
    } catch (e) {
      throw Exception('Authentication failed');
    }
  }
}
