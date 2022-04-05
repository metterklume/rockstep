import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:my_app/screens/home/screen.dart';
import 'package:my_app/services/main_service.dart';

@StackedApp(
  logger: StackedLogger(),
  routes: [
    MaterialRoute(page: HomeScreen, initial: true),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: SnackbarService),
    LazySingleton(classType: MainService),
  ],
)
class AppSetup {}
