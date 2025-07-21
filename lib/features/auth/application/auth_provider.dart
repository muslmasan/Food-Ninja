import 'package:pixeltrue/features/auth/domain/auth_services.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthProvider with ChangeNotifier {
  final AuthServices _authServices;

  AuthProvider(this._authServices);

  User? _user;
  bool _isLoading = false;
  String? _error;


  User? get user=>_user;
  bool get isLoading => _isLoading;
  String? get error =>_error;

  Future<void> login(String email, String password) async{
    _setLoading(true);
    try{
      _user = await _authServices.login(email, password);
      _error = null;
    }catch(e){
      _error = e.toString();
    } finally{
      _setLoading(false);
    }
  }
  Future<void> singup (String email, String password) async{
    _setLoading(true);
    try{
      _user = await _authServices.register(email, password);
      _error = null;
    }catch(e){
      _error = e.toString();
    }finally{
      _setLoading(false);
    }
  }

  Future<void> singout()async{
    await _authServices.logout();
    _user = null;
     notifyListeners();
  }


  void _setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

}