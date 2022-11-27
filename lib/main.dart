import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app.dart';
import 'shared/utils/app_state_notifier.dart';

void main() {
  runApp(
    ChangeNotifierProvider<AppStateNotifier>(
      create: (_) => AppStateNotifier(),
      child: const App(),
    ),
  );
}
