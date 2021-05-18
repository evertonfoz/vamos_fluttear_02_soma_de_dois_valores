import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soma_de_dois_valores/presentation/pages/second_value_page.dart';

class FirstValuePage extends StatelessWidget {
  String _firstValue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primeiro Valor'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/images/calculator.png'),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                hintText: 'informe o primeiro valor',
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
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward_ios),
        onPressed: () {
          if (_firstValue.isEmpty)
            return showDialog<void>(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('ERRO'),
                    content: Text(
                        'É preciso informar o primeiro valor para a operação de soma'),
                    actions: [
                      TextButton(
                        child: Text('OK'),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ],
                  );
                });

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SecondValuePage(),
            ),
          );
        },
      ),
    );
  }
}
