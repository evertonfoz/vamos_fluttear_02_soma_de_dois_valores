import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:soma_de_dois_valores/presentation/pages/first_value_page.dart';

class MaterialHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text(
                  'App de soma de dois valores',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo[900]),
                ),
              ),
            ),
            Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Image.asset("assets/images/calculator.png"),
                )),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Comece por aqui',
            style: GoogleFonts.aBeeZee(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.indigo),
          ),
          SizedBox(
            width: 5,
          ),
          FloatingActionButton(
            child: Icon(Icons.arrow_forward_ios),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FirstValuePage(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
