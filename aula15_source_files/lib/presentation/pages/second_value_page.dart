import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:soma_de_dois_valores/common/common_functions.dart';
import 'package:soma_de_dois_valores/core/inherited_operating.dart';
import 'package:soma_de_dois_valores/presentation/pages/sum_result_page.dart';

class SecondValuePage extends StatelessWidget {
  static const routeName = '/second';

  // final String firstValue;

  // SecondValuePage({@required this.firstValue});

  String _secondValue = '';

  @override
  Widget build(BuildContext context) {
    // print('First Value:${InheritedOperating.of(context).operating.First}');

    return Scaffold(
      appBar: AppBar(
        title: Text('Segundo valor'),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                'Você informou ${InheritedOperating.of(context).operating.First} como primeiro valor',
                textAlign: TextAlign.center,
                style: GoogleFonts.abel(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[900],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Card(
              elevation: 3,
              child: TextField(
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.keyboard,
                    color: Colors.indigo,
                  ),
                  hintText: 'informe o segundo valor',
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.blue,
                      width: 2.0,
                    ),
                  ),
                ),
                onChanged: (value) => _secondValue = value,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          if (_secondValue.isEmpty)
            return valueRequiredDialog(context: context);

          InheritedOperating.of(context).operating.Second = _secondValue;

          Navigator.of(context).pushNamed(SumResultPage.routeName);
          // ,
          //     arguments: [firstValue, _secondValue]);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset(
              'assets/images/calculator.png',
              height: 60,
              width: 60,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Somar',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
