import 'package:get_it/get_it.dart';
import 'package:sneaker/viewModels/sign_in.viewmodel.dart';
import 'package:sneaker/viewModels/sign_up.viewmodel.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  // locator.registerLazySingleton(() => null); //Pour les services
  // locator.registerFactory(() => null); //Pour les views models
  locator.registerFactory(() => SignUpViewModel());
  locator.registerFactory(() => SignInViewModel());
}
