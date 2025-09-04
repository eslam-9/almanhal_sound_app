import 'package:almanhal/features/auth/data/models/user_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseAuth {
  final SupabaseClient _client;

  SupabaseAuth({required SupabaseClient client}) : _client = client;

  Future<UserModel> signUp({
    required String email,
    required String password,
    required String name,
  }) async {
    final response = await _client.auth.signUp(
      password: password,
      email: email,
      data: {'name': name},
    );
    final user = response.user;
    if (user == null) {
      throw Exception('Authentication failed');
    }
    return UserModel.fromSupabaseUser(user);
  }

  Future<UserModel> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    final response = await _client.auth.signInWithPassword(
      password: password,
      email: email,
    );
    final user = response.user;
    if (user == null) {
      throw Exception('Authentication failed');
    }
    return UserModel.fromSupabaseUser(user);
  }
}
