import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gals_app/util/color.dart';
import 'package:gals_app/util/router.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      color: GalsColor.backgroundColor,
      debugShowCheckedModeBanner: false,
      locale: const Locale('ja'),
      localizationsDelegates: const [
        DefaultMaterialLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate,
        DefaultWidgetsLocalizations.delegate
      ],
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme.light(),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme.dark(),
      ),
      routerConfig: router,
    );
  }
}
