import 'package:auto_route/auto_route.dart';

import 'package:foodwifi/src/firebaseRealTime/pages/homePage.dart';
import 'package:foodwifi/src/firebaseRealTime/pages/notifi.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: Notify, initial: true),
  ],
)
class $AppRouter {}
