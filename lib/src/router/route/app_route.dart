import 'package:auto_route/auto_route.dart';
import 'package:foodwifi/src/dateTimeRange/pages/calendar.dart';
import 'package:foodwifi/src/dateTimeRange/pages/calenderangetime.dart';

import 'package:foodwifi/src/dateTimeRange/pages/datetimepicker.dart';
import 'package:foodwifi/src/firebaseRealTime/pages/display.dart';

import 'package:foodwifi/src/firebaseRealTime/pages/homePage.dart';
import 'package:foodwifi/src/flutterflowpage/pages/createStory.page.dart';
import 'package:foodwifi/src/imagePicker/pages/imagepicker.dart';
import 'package:foodwifi/src/router/router.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
  ],
)
class $AppRouter {}
