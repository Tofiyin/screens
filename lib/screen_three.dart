import 'package:flutter/material.dart';
import 'package:my_first_app/home.dart';
import 'package:my_first_app/screen_four.dart';

class ScreenThree extends StatelessWidget {

  const ScreenThree({Key? key,  String? title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenThreeArguements;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.grey[900],
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              const Text('welcome to screen three'),
             Text('${args.title}'),
             Text('${args.name}'),
             Text('${args.phone}'),
            const SizedBox(height: 20),
            MaterialButton(
              onPressed: () {
              Navigator.push(context,
              MaterialPageRoute(builder: (_) => const Homepage()));
              },
              child: const Text('GO TO HOMEPAGE'),
            ),
            MaterialButton(
              color: Colors.pink,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const ScreenFour(
                              title: 'screen four',
                            )));
              },
              child: const Text('GO TO SCREEN FOUR'),
            ),
          ],
        ),
      ),
    );
  }
}

class ScreenThreeArguements {                     
  final String? title, name, phone;
                                                                                                                                                        
  ScreenThreeArguements({required this.title, required this.name,  this.phone});
}
