import 'package:flutter/material.dart';
import 'package:my_first_app/home.dart';
import 'package:my_first_app/routes.dart';
import 'login.dart';

import 'screen_five.dart';
import 'screen_four.dart';
import 'screen_three.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
      // initialRoute: '/',
      // routes: MyHomepageroutes().routeSettings,
      // // home: const Homepage(),
      // routes: {
      //   '/': (_) => const Homepage(title: 'title'),
      //   '/screen_four': (context) => const ScreenFour(
      //         title: 'screen four',
      //       ),
      //   '/screen_three': (context) => const ScreenThree(
      //         title: 'screen three',
      //       ),
      //   '/screen_five': (context) => const ScreenFive(
      //         title: 'screen five',
      //       ),
      // },
      
    );
    
  }
}





