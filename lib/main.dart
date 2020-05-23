import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() {
  runApp(ModularApp(module:  AppModule(),));
}

/*class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Gofast',
      theme: ThemeData(
        primarySwatch: Colors.orange,
       
      ),
      home: MyHomePage(),
    );
  }
}*/