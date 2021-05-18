import 'package:flutter/material.dart';

class MaterialHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Material Homepage')),
      body: Center(child: Text('Page body')),
      floatingActionButton: FloatingActionButton(
        child: (Icon(Icons.arrow_forward_ios)),
      ),
    );
  }
}
