import 'dart:async';

import 'package:flutter/foundation.dart';

import '../models/app_user.dart';

class AuthController extends ChangeNotifier {
  AppUser? _currentUser;
  bool _isLoading = false;
  String? _errorMessage;

  AppUser? get currentUser => _currentUser;
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;
  bool get isAuthenticated => _currentUser != null;

  Future<bool> login({
    required String email,
    required String password,
  }) async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    await Future.delayed(const Duration(seconds: 1));

    final normalizedEmail = email.trim().toLowerCase();

    const users = <String, AppUser>{
      'aluno@etec.sp.gov.br': AppUser(
        name: 'Aluno Exemplo',
        email: 'aluno@etec.sp.gov.br',
      ),
      'professor@etec.sp.gov.br': AppUser(
        name: 'Professor Exemplo',
        email: 'professor@etec.sp.gov.br',
      ),
    };

    final selectedUser = users[normalizedEmail];

    if (selectedUser == null || password != '123456') {
      _isLoading = false;
      _errorMessage = 'E-mail ou senha inválidos.';
      notifyListeners();
      return false;
    }

    _currentUser = selectedUser;
    _isLoading = false;
    notifyListeners();
    return true;
  }

  void logout() {
    _currentUser = null;
    _errorMessage = null;
    notifyListeners();
  }
}
