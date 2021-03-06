import 'package:flutter/material.dart';
import 'package:my_app/app/app.locator.dart';
import 'package:stacked_services/stacked_services.dart';

// Consts
import 'package:my_app/consts/strings.dart' as Strings;
import 'package:my_app/consts/colours.dart' as Colours;

// Screens
import 'package:my_app/screens/home/screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();

  runApp(LeftRightApp());
}

class LeftRightApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: buildTheme(),
      title: Strings.appName,
      home: HomeScreen(),
    );
  }

  ThemeData buildTheme() {
    return ThemeData(
      primaryColor: Colours.primary,
    );
  }
}
