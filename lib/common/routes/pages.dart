import 'package:get/get.dart';

import 'package:admin/screens/dashboard/marketing_dashboard/marketing_dashboard_screen.dart';
import 'package:admin/screens/dashboard/storage_dashboard/storage_dashboard_screen.dart';
part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.STORAGEDASHBOARD,
      page: () => StorageDashboardScreen(),
    ),
    GetPage(
      name: Routes.MARKETINGDASHBOARD,
      page: () => MarketingDashboardScreen(),
    ),
  ];
}
