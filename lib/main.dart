import 'package:flutter/material.dart';

import 'package:foodwifi/src/app/widget/app.widget.dart';
import 'package:foodwifi/src/router/route/app_route.gr.dart';

void main() {
  final _appRouter = AppRouter();
  runApp(MyApp(
    appRouter: _appRouter,
  ));
}
