import 'package:flutter/material.dart';

import 'app/locator.dart';
import 'ui/views/main_view/main_view.dart';

Future<void> main() async {
  try {
    // Register all the models and services before the app starts
    await setupLocator();

    runApp(const MyApp());
  } catch (error) {
    debugPrint('Locator setup has failed');
  }
}

class MyApp extends StatelessWidget {
  ///
  const MyApp({Key key}) : super(key: key);

  static final String title = 'Stacked Filter & Search';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainView(),
    );
  }
}
