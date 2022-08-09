import 'package:flutter/material.dart';
import 'package:my_first_app/screen_three.dart';

class Screentwo extends StatelessWidget {
  final String? title, email, phn;
  const Screentwo({Key? key, this.title, this.email, this.phn}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blue,
        title:  Text('$title'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('welcome to screen two'),
            Text('$title'),
            Text('$email'),
            Text('$phn'),
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const ScreenThree(
                              title: 'screen three',
                            )));
              },
              child: const Text('GO TO SCREEN THREE'),
            ),
          ],
        ),
      ),
    );
  }
}
