import 'package:auto_route/auto_route.dart';
import 'package:foodwifi/src/dateTimeRange/pages/calendar.dart';
import 'package:foodwifi/src/dateTimeRange/pages/calenderangetime.dart';

import 'package:foodwifi/src/dateTimeRange/pages/datetimepicker.dart';
import 'package:foodwifi/src/flutterflowpage/pages/createStory.page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: CalenderRangeTime, initial: true),
  ],
)
class $AppRouter {}
