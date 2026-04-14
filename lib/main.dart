import 'package:flutter/material.dart';

import 'controllers/auth_controller.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AuthController _authController = AuthController();

  @override
  void dispose() {
    _authController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login e Autenticação',
      theme: ThemeData(
        colorSchemeSeed: Colors.indigo,
        useMaterial3: true,
      ),
      home: AnimatedBuilder(
        animation: _authController,
        builder: (context, _) {
          if (_authController.isAuthenticated) {
            return HomePage(authController: _authController);
          }

          return LoginPage(authController: _authController);
        },
      ),
    );
  }
}
