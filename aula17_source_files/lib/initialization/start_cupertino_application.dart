import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soma_de_dois_valores/presentation/pages/cupertino_home_page.dart';

class StartCupertinoApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Soma de 2 valores',
      theme: CupertinoThemeData(primaryColor: Colors.blue),
      home: CupertinoHomePage(),
    );
  }
}
