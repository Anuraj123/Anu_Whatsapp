import 'package:get_it/get_it.dart';
import 'nav_ser.dart';
GetIt locator = GetIt.instance;
void setupLocator() {
  locator.registerLazySingleton(()=>NavigationService());
}