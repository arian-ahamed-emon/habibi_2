import 'package:get/get.dart';
import 'package:habbibi_2/views/auth/login_screen.dart';

class AppRoutes {
  static const String loginScreen = '/login_screen';

  static List<GetPage> pages = [
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
    )
  ];
}
