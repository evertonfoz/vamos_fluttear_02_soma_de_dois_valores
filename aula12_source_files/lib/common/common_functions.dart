import 'package:flutter/material.dart';

valueRequiredDialog({@required BuildContext context}) {
  return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('ERRO'),
          content: Text('É preciso informar o valor para a operação de soma'),
          actions: [
            TextButton(
              child: Text('OK'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      });
}
