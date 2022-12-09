import 'package:chat/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'shared/theme/theme_data.dart';
import 'shared/utils/app_state_notifier.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateNotifier>(builder: (context, appState, child) {
      return MaterialApp(
          title: 'Chat',
          theme: ThemeConfig.lightTheme,
          darkTheme: ThemeConfig.darkTheme,
          themeMode: appState.isDarkMode ? ThemeMode.dark : ThemeMode.light,
          onGenerateRoute: routes,
          debugShowCheckedModeBanner: false);
    });
  }
}
