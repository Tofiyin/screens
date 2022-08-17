import 'package:flutter/material.dart';
import 'package:my_first_app/screen_three.dart';

class Screentwo extends StatelessWidget {
  // final String? title, email, phn;
  const Screentwo({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final args = ModalRoute.of(context)!.settings.arguments as ScreenTwoArguements;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text('Screen two'),
        // elevation: 0,
        backgroundColor: Colors.blue,
        // title:  Text('$title'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('welcome to screen two'),
            // Text('$title'),
            // Text('$email'),
            // Text('$phn'),
            const SizedBox(height: 20),
            MaterialButton(
              color: Colors.red,
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('GO back'),
            ),
            MaterialButton(
              color: Colors.purple,
              onPressed: () {
                Navigator.pushNamed(context, '/screen_three',
                    arguments: ScreenThreeArguements(
                      title: 'This is screen three',
                      name: 'Jesse',
                      phone: '0903893893939',
                    ));
              },
              child: const Text('GO TO SCREEN THREE'),
            ),
          ],
        ),
      ),
    );
  }
}


class ScreenTwoArguements {
  final String? title, name, phone;

  ScreenTwoArguements({required this.title, required this.name,  this.phone});
}

