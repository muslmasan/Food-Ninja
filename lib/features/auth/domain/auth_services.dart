import 'package:supabase_flutter/supabase_flutter.dart';
import '../data/auth_repository.dart';

class AuthServices{
  final AuthRepository _repository;
  AuthServices(this._repository);

  Future<User?> login (String email, String password)async{
    final response = await _repository.signInWithEmailPassword(email, password);
    return response.user;
  }

  Future<User?> register (String email, String password) async{
    final response = await _repository.signUpWithEmailPassword(email, password);
    return response.user;
  }

  Future<void>  logout(){
    return _repository.signOut();
  }

  User? getCurrentUser(){
    return _repository.currentUser;
  }
}