import 'package:flutter/material.dart';

class SoorUserApp extends StatelessWidget {
  const SoorUserApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteNavigator.onGenerateRoute,
      title: 'Soor User App',
      home: Scaffold(
        body: Center(
          child: Text('Soor User App'),
        ),
      ),
    );
  }
}
