import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:foodwifi/src/app/widget/app.widget.dart';
import 'package:foodwifi/src/router/route/app_route.gr.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  final _appRouter = AppRouter();
  runApp(MyApp(
    appRouter: _appRouter,
  ));
}
