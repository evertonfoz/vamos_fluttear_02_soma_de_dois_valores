import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:soma_de_dois_valores/initialization/start_cupertino_application.dart';

import 'initialization/start_material_application.dart';

main() {
  if (Platform.isAndroid) {
    runApp(StartMaterialApplication());
  } else if (Platform.isIOS) {
    runApp(StartCupertinoApplication());
  }
}
