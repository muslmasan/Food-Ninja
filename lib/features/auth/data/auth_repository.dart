import 'package:supabase_flutter/supabase_flutter.dart';

class AuthRepository{
  final SupabaseClient _client = Supabase.instance.client;


  // singIn
  Future<AuthResponse> signInWithEmailPassword (String email, String password) async{
    return await _client.auth.signInWithPassword(
        email: email,
        password: password)
    ;
  }

  // Signup
  Future<AuthResponse> signUpWithEmailPassword (String email, String password) async{
    return await _client.auth.signUp(
        email: email,
        password: password)
    ;
  }

  //Sign Out

  Future<void>signOut() async{
    await _client.auth.signOut();
  }

  User? get currentUser => _client.auth.currentUser;

}