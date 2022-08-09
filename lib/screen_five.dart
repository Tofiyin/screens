import 'package:flutter/material.dart';

class ScreenFive extends StatelessWidget {
  final String? title, email, phn;
  const ScreenFive({Key? key, this.title, this.email, this.phn})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        elevation: 0,
        title: const Text('Screen five'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [Text('This is screen five')],
      ),
    );
  }
}
