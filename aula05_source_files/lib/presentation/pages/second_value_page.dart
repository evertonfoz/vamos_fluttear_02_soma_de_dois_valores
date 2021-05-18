import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SecondValuePage extends StatelessWidget {
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
              child: Text('Você informou N como primeiro valor'),
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
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Column(
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
    );
  }
}
