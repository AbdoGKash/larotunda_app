import 'package:flutter/material.dart';
import 'package:larotunda/core/routing/app_router.dart';
import 'package:larotunda/core/routing/routers_name.dart';

class LarotundaApp extends StatelessWidget {
  const LarotundaApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RoutersName.login,
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
