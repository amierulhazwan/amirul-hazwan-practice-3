import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'welcome to da hood',
      home: Scaffold(
        //
        appBar: AppBar(
          title: const Text('Home'),
          backgroundColor: Colors.amber[900],
          elevation: 5.0,
          leading: Center(
            // child: const Text(
            //   "Log out",
            //   style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            // ),

            child: IconButton(
              icon: const Icon(
                Icons.logout_outlined,
              ),
              // tooltip: 'Home Icon',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
        body: Center(
          child: const Text("Hello Deriv!"),
        ),
      ),
    );
  }
}
