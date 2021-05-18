import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:soma_de_dois_valores/presentation/pages/first_value_page.dart';
import 'package:soma_de_dois_valores/presentation/pages/material_home_page.dart';
import 'package:soma_de_dois_valores/presentation/pages/second_value_page.dart';
import 'package:soma_de_dois_valores/presentation/pages/sum_result_page.dart';

const animationDuration = Duration(seconds: 1);

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MaterialHomePage.routeName:
        return PageTransition(
          duration: animationDuration,
          type: PageTransitionType.bottomToTop,
          child: MaterialHomePage(),
        );
      case FirstValuePage.routeName:
        return PageTransition(
          duration: animationDuration,
          type: PageTransitionType.leftToRight,
          child: FirstValuePage(),
        );
      case SecondValuePage.routeName:
        return PageTransition(
          duration: animationDuration,
          type: PageTransitionType.rightToLeft,
          child: SecondValuePage(),
        );
      case SumResultPage.routeName:
        List<String> arguments = settings.arguments;
        return PageTransition(
          duration: animationDuration,
          type: PageTransitionType.rightToLeft,
          child: SumResultPage(),
        );
    }
  }
}
