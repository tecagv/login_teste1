import 'package:flutter/material.dart';

import '../controllers/auth_controller.dart';

class HomePage extends StatelessWidget {
  final AuthController authController;

  const HomePage({
    super.key,
    required this.authController,
  });

  @override
  Widget build(BuildContext context) {
    final user = authController.currentUser!;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Área protegida'),
        actions: [
          IconButton(
            onPressed: authController.logout,
            icon: const Icon(Icons.logout),
            tooltip: 'Sair',
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 500),
            child: Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.verified_user, size: 72),
                    const SizedBox(height: 16),
                    Text(
                      'Bem-vindo, ${user.name}!',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Você entrou com o e-mail: ${user.email}',
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Esta tela representa uma área protegida do sistema. '
                      'Ela só pode ser acessada depois da autenticação.',
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 24),
                    ElevatedButton.icon(
                      onPressed: authController.logout,
                      icon: const Icon(Icons.logout),
                      label: const Text('Encerrar sessão'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
