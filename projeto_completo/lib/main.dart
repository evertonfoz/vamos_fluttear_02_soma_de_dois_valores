import 'dart:io' show Platform;

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soma_de_dois_valores/core/inherited_operating.dart';
import 'package:soma_de_dois_valores/initialization/start_cupertino_application.dart';
import 'package:soma_de_dois_valores/models/operating_model.dart';

import 'initialization/start_material_application.dart';

main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );

  if (Platform.isAndroid) {
    runApp(InheritedOperating(
      operating: OperatingModel(),
      child: DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => StartMaterialApplication(),
      ),
    ));
    // runApp(DevicePreview(
    //   enabled: !kReleaseMode,
    //   builder: (context) => InheritedOperating(
    //     operating: OperatingModel(),
    //     child: StartMaterialApplication(),
    //   ),
    // ));
  } else if (Platform.isIOS) {
    runApp(StartCupertinoApplication());
  }
}
