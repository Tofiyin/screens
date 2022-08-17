import 'package:flutter/material.dart';
import 'package:my_first_app/home.dart';
import 'package:my_first_app/screen_five.dart';

class ScreenFour extends StatelessWidget {
  final String? title, email, phn;
  const ScreenFour({Key? key, this.title, this.email, this.phn}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            const Text('welcome to screen four'),
            const SizedBox(height: 20),
            MaterialButton(
            onPressed: () {
            Navigator.push(context,
            MaterialPageRoute(builder: (_) => const Homepage(title: '')));                                       
              },
              child: const Text('GO TO SCREEN FIVE'),
            ),
             MaterialButton(
              color: Colors.amber,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const ScreenFive(
                              title: 'screen five',
                            )));
              },
              child: const Text('GO TO SCREEN FIVE'),
             ), 
            
          ],
        ),
      ),
    );
  }
}