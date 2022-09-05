import 'package:flutter/material.dart';
import 'package:multi_provider/height_provider.dart';
import 'package:multi_provider/weight_provider.dart';
import 'package:provider/provider.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<WeightProvider>(
            create: (context) => WeightProvider()),
        ChangeNotifierProvider<HeightProvider>(
            create: (context) => HeightProvider()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
