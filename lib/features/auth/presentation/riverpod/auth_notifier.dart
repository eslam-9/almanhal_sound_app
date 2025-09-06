import 'dart:async';

import 'package:almanhal/features/auth/data/datasource/supabase_auth.dart';
import 'package:almanhal/features/auth/data/repoImp/auth_repo_imp.dart';
import 'package:almanhal/features/auth/domain/entities/user.dart';
import 'package:almanhal/features/auth/domain/repo/auth_repo.dart';
import 'package:almanhal/features/auth/domain/use%20case/auth_usecase.dart';
import 'package:riverpod/riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthNotifier extends AsyncNotifier<UserEntitie> {
  late final AuthUsecase _authUsecase;
  AuthNotifier(this._authUsecase);
  @override
  FutureOr<UserEntitie> build() {
    return UserEntitie(email: '', name: '', id: '');
  }

  Future<void> signIn(String email, String password) async {
    state = AsyncValue.loading();
    try {
      final user = await _authUsecase.login(email: email, password: password);
      state = AsyncValue.data(user);
    } catch (e, s) {
      state = AsyncValue.error(e, s);
    }
  }

  void signUp(String email, String name, String password) async {
    state = AsyncValue.loading();
    try {
      final user = await _authUsecase.register(
        email: email,
        name: name,
        password: password,
      );
      state = AsyncValue.data(user);
    } catch (e, s) {
      state = AsyncValue.error(e, s);
    }
  }

  Future<void> logOut() async {
    state = AsyncValue.loading();
    try {
      await _authUsecase.logOut();
      state = AsyncValue.data(UserEntitie(email: '', name: '', id: ''));
    } catch (e, s) {
      state = AsyncValue.error(e, s);
    }
  }
}

final authNotifierPovider = AsyncNotifierProvider<AuthNotifier, UserEntitie>(
  () => AuthNotifier(
    AuthUsecase(
      authRepo: AuthRepoImpWithSupabase(
        supabaseAuth: SupabaseAuth(client: Supabase.instance.client),
      ),
    ),
  ),
);
