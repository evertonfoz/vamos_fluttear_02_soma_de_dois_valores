import 'package:flutter/material.dart';
import 'package:soma_de_dois_valores/presentation/pages/first_value_page.dart';

class SumResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Apresentação da operação'),
            Text('N + X = Y'),
            Image.asset(
              'assets/images/calculator.png',
              height: 120,
              width: 120,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: () => Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => FirstValuePage()),
            (route) => false),
      ),
    );
  }
}
