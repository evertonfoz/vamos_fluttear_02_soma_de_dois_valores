import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:soma_de_dois_valores/presentation/pages/first_value_page.dart';
import 'package:soma_de_dois_valores/presentation/widgets/hero_calculator_widget.dart';

class MaterialHomePage extends StatefulWidget {
  static const routeName = '/';

  @override
  _MaterialHomePageState createState() => _MaterialHomePageState();
}

class _MaterialHomePageState extends State<MaterialHomePage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 2,
      ),
    );

    _animation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(_controller);

    _controller.repeat(
      // min: 0.0,
      // max: 1.0,
      reverse: true,
      // period: Duration(
      //   seconds: 10,
      // ),
    );

    // _controller.forward();
    //
    // _animation.addStatusListener((status) {
    //   if (status == AnimationStatus.completed) {
    //     _controller.reverse();
    //   } else if (status == AnimationStatus.dismissed) {
    //     _controller.forward();
    //   }
    // });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
                child: HeroCalculatorWidget(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FadeTransition(
            opacity: _animation,
            child: Text(
              'Comece por aqui',
              style: GoogleFonts.aBeeZee(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          FloatingActionButton(
            child: Icon(Icons.arrow_forward_ios),
            onPressed: () =>
                Navigator.of(context).pushNamed(FirstValuePage.routeName),
          ),
        ],
      ),
    );
  }
}
