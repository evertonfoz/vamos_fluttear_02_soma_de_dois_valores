import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soma_de_dois_valores/initialization/start_cupertino_application.dart';

import 'initialization/start_material_application.dart';

main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );

  if (Platform.isAndroid) {
    runApp(StartMaterialApplication());
  } else if (Platform.isIOS) {
    runApp(StartCupertinoApplication());
  }
}
