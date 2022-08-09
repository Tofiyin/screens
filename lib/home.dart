import 'package:flutter/material.dart';
import 'package:my_first_app/screen_five.dart';
import 'package:my_first_app/screen_three.dart';

import 'screen_four.dart';
import 'screen_two.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.grey[900],
          title: const Text('Home'),
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            children: <Widget>[
              const DrawerHeader(
                child: Icon(
                  Icons.favorite,
                  color: Colors.blue,
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('DASHBOARD'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.chat),
                title: const Text('MESSAGES'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('SETTINGS'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('LOGOUT'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar:
            BottomNavigationBar(items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ]),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('welcome to screen two '), 
              const SizedBox(height: 20),
              MaterialButton(
                color: Colors.blue,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const Screentwo(title: 'screen two',
                      email: 'jesse@gmail.com',
                      phn: '090348949',
                      )));
                },
                child: const Text('GO TO SCREEN TWO'),
              ),
              MaterialButton(
                color: Colors.red,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => const ScreenThree(
                    title: 'screen three',
                  )));
                },
                child: const Text('GO TO SCREEN THREE'),
              ),
              MaterialButton(
                color: Colors.purple,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => const ScreenFour(title: 'screen four',)));
                },
                child: const Text('GO TO SCREEN FOUR'),
              ),
              MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => const ScreenFive(title: 'Screen Five',)) );
              },
              color: Colors.amber,
              child: const Text('GO TO SCREEN FIVE'),
              )
            ],
          ),
        ));
  }
}
