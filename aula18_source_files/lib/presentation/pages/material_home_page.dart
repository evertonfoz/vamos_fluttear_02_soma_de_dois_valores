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

  _initAnimationAndAnimationController() {
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
      reverse: true,
    );
  }

  @override
  void initState() {
    _initAnimationAndAnimationController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  _pageTitle() {
    return Align(
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
    );
  }

  _heroLogo() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: HeroCalculatorWidget(),
      ),
    );
  }

  _floatActionButton() {
    return Row(
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            _pageTitle(),
            _heroLogo(),
          ],
        ),
      ),
      floatingActionButton: _floatActionButton(),
    );
  }
}
