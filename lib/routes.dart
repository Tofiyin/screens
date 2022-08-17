import 'package:flutter/material.dart';
import 'package:my_first_app/home.dart';
import 'package:my_first_app/screen_five.dart';
import 'package:my_first_app/screen_four.dart';
import 'package:my_first_app/screen_three.dart';
import 'package:my_first_app/screen_two.dart';

class MyHomepageroutes {
  Map<String, Widget Function(BuildContext)> routeSettings = {
     '/': (_) => const Homepage(title: 'title'),
        '/screen_four': (context) => const ScreenFour(
              title: 'screen four',
            ),
        '/screen_three': (context) => const ScreenThree(
              title: 'screen three',
            ),
        '/screen_five': (context) => const ScreenFive(
              title: 'screen five',
        ),
        '/screen_two': (context) => const Screentwo(
              title: 'screen two',
        ),
  };
}
