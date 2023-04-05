import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gals_app/application.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  initializeDateFormatting()
      .then((value) => runApp(const ProviderScope(child: Application())));
}
