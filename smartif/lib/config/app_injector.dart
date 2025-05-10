import 'package:get_it/get_it.dart';

import '../data/controllers/login_controller.dart';

GetIt getIt = GetIt.instance;

void injector() {
  getIt.registerSingleton<LoginController>(LoginController());
}
