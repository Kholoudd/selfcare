import 'package:flutter/material.dart';
import 'package:qize/layouts/homeLayout.dart';

import 'core/theme/applicationTheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ApplicationTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: HomeLayout(),
    );
  }
}
