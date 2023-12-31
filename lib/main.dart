import 'package:app_masterclass/app/shared/theme/theme.dart';
import 'package:app_masterclass/router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ChangeTheme(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ChangeTheme changeTheme = Provider.of<ChangeTheme>(context);
    return MaterialApp(
      themeMode: changeTheme.isDark ? ThemeMode.dark : ThemeMode.light,
      // themeMode: ThemeMode.system,
      darkTheme: MyTheme.dark,
      theme: MyTheme.light,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouterMasterClass.generateRoute,
      initialRoute: '/',
    );
  }
}
