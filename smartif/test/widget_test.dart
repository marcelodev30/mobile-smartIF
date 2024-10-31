import 'package:smartif/data/controllers/login_controller.dart';
import 'package:smartif/data/models/login_models.dart';

void main() async {
  LoginController a = LoginController();
  await a.login(LoginModels(login: 'marcelo', senha: 'ash'));
}
