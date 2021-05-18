import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soma_de_dois_valores/common/common_functions.dart';
import 'package:soma_de_dois_valores/presentation/pages/sum_result_page.dart';

class SecondValuePage extends StatelessWidget {
  final String firstValue;

  SecondValuePage({@required this.firstValue});

  String _secondValue = '';

  @override
  Widget build(BuildContext context) {
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
                'Você informou $firstValue como primeiro valor',
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
                onChanged: (value) => _firstValue = value,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          if (_secondValue.isEmpty)
            return valueRequiredDialog(context: context);

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SumResultPage(
                firstValue: firstValue,
                secondValue: _secondValue,
              ),
            ),
          );
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
