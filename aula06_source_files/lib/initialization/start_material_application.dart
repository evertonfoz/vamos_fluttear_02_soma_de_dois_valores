import 'package:flutter/material.dart';
import 'package:soma_de_dois_valores/presentation/pages/sum_result_page.dart';

class StartMaterialApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Soma de 2 valores',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: SumResultPage());
    // home: MaterialHomePage());
    // home: MaterialHomePage());
  }
}
