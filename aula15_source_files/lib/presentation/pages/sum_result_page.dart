import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:soma_de_dois_valores/core/inherited_operating.dart';
import 'package:soma_de_dois_valores/presentation/pages/first_value_page.dart';

class SumResultPage extends StatelessWidget {
  static const routeName = '/result';

  // final String firstValue;
  // final String secondValue;
  //
  // const SumResultPage({
  //   @required this.firstValue,
  //   @required this.secondValue,
  // });
  //
  @override
  Widget build(BuildContext context) {
    final String firstValue = InheritedOperating.of(context).operating.First;
    final String secondValue = InheritedOperating.of(context).operating.Second;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Apresentação da operação',
              textAlign: TextAlign.center,
              style: GoogleFonts.abhayaLibre(
                textStyle: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[900],
                ),
              ),
            ),
            Text(
              '$firstValue + '
              '$secondValue = ${int.parse(firstValue) + int.parse(secondValue)}',
              style: GoogleFonts.abrilFatface(
                textStyle: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow[900],
                ),
              ),
            ),
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
        onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil(
            FirstValuePage.routeName, (route) => false),
      ),
    );
  }
}
