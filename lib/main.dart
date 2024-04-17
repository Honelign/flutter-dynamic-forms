import 'package:flutter/material.dart';
import 'package:flutter_dynamic_forms/home.dart';

import 'dynamic_form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dynamic Form',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        useMaterial3: true,
        inputDecorationTheme: const InputDecorationTheme(
          contentPadding: EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 20,
          ),
          border: OutlineInputBorder(
            gapPadding: 10,
          ),
        ),
      ),
      home: DynamicForm(dataArray: [InvoiceRow()]),
    );
  }
}
