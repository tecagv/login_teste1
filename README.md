# Login e Autenticação com Flutter

Projeto didático criado para ensinar login, autenticação simulada, validação de formulário e controle de sessão em Flutter.

## O que o projeto faz?
## Leia este arquivo com atenção.

- Exibe uma tela de login com validação
- Simula autenticação com usuários de teste
- Mostra uma área protegida após o login
- Permite logout e retorno ao formulário

## Estrutura do projeto

```text
lib/
  main.dart
  controllers/
    auth_controller.dart
  models/
    app_user.dart
  pages/
    home_page.dart
    login_page.dart
test/
  widget_test.dart
```

## Como executar

1. Abra a pasta do projeto no VS Code ou Android Studio.
2. Caso você queira gerar ou regenerar os diretórios de plataforma (`android`, `ios`, `web`, `linux`, `macos`, `windows`), execute no terminal, na raiz do projeto:

```bash
flutter create .
```

3. Baixe as dependências:

```bash
flutter pub get
```

4. Execute o aplicativo:

```bash
flutter run
```

## Credenciais de teste

- `aluno@etec.sp.gov.br` / `123456`
- `professor@etec.sp.gov.br` / `123456`

## Próximos passos sugeridos

- Conectar a autenticação com Firebase Auth
- Persistir sessão com SharedPreferences
- Criar cadastro de novos usuários
- Adicionar recuperação de senha
