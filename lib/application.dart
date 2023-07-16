import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gals_app/util/color.dart';
import 'package:gals_app/util/router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Application extends ConsumerWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: ref.watch(goRouterProvider),
      color: GalsColor.backgroundColor,
      debugShowCheckedModeBanner: false,
      locale: const Locale('ja'),
      localizationsDelegates: const [
        DefaultMaterialLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate,
        DefaultWidgetsLocalizations.delegate
      ],
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
    );
  }
}
