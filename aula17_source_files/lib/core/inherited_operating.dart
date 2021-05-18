import 'package:flutter/material.dart';
import 'package:soma_de_dois_valores/models/operating_model.dart';

class InheritedOperating extends InheritedWidget {
  final OperatingModel operating;

  const InheritedOperating({
    @required this.operating,
    @required Widget child,
  }) : super(child: child);

  static InheritedOperating of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedOperating>();
  }

  @override
  bool updateShouldNotify(covariant InheritedOperating old) {
    return (operating.First != old.operating.First ||
        operating.Second != old.operating.Second);
  }
}
