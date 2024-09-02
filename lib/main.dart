
import 'package:app_ui/view/location_input_page/location_input_page.dart';
import 'package:app_ui/view/routes/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LocationInputPage(),
    );
  }
}
