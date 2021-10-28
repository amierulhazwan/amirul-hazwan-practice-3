import 'package:flutter/material.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'welcome to da hood',
      home: Scaffold(
        appBar: AppBar(title: const Text('Hello Deriv')),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Go back!'),
          ),
        ),
      ),
    );
  }
}

//  appBar: AppBar(
//         title: const Text("Hello Deriv"),
//         backgroundColor: Colors.amber[900],
//         elevation: 5.0,
//         leading:
//             // Center(
//             //   child: Text(
//             //   'Settings',
//             //   style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
//             // )),
//             IconButton(
//           icon: const Icon(
//             Icons.home_outlined,
//           ),
//           // tooltip: 'Home Icon',
//           onPressed: () {},
//         ), //IconButton
//       ), //AppBar