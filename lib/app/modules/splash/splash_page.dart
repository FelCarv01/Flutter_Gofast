import 'package:flutter/material.dart';
import 'package:flutter_go_fast/app/utils/internationalization/app_tranlate.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          AppTranslate(context).text('Welcome'),
        ),
      ),
    );
  }
}
