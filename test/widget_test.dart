import 'package:flutter_test/flutter_test.dart';
import 'package:login_autenticacao_app/main.dart';

void main() {
  testWidgets('deve exibir a tela de login ao iniciar o app', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Login Flutter'), findsOneWidget);
    expect(find.text('Acesso ao sistema'), findsOneWidget);
    expect(find.text('Entrar'), findsOneWidget);
  });
}
