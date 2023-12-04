import 'package:get/get_navigation/src/routes/get_route.dart';
import '../view/DashboardScreen.dart';
import '../view/LoginScreen.dart';
import '../view/printPreview.dart';
import '../view/splashscreen.dart';

class AppRoutes {
  static const String splashScreen = "/splashScreen";
  static const String splash = "/Splash";
  static const String dashboardScreen = "/DashboardScreen";
  static const String posInvoicePrintPreview = "/PosInvoicePrintPreview";
}

final pages = [
  GetPage(name: AppRoutes.splash, page: () =>  Splash()),
  GetPage(name: AppRoutes.splashScreen, page: () => const SplashScreen()),
  GetPage(name: AppRoutes.dashboardScreen, page: () => const DashboardScreen()),
  GetPage(name: AppRoutes.posInvoicePrintPreview, page: () =>  PosInvoicePrintPreview()),

];