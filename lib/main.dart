// import 'dart:html';

import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final pswdController = TextEditingController();

  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: ListView(children: <Widget>[
        Center(
          child: Container(
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.only(top: 35),
            child: const Text(
              "Welcome to BeSquare",
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
        Container(
          height: 250,
          child: Image.network(
            'https://scontent.fkul8-1.fna.fbcdn.net/v/t1.6435-9/167989111_122052736569342_2932569327583921419_n.png?_nc_cat=107&ccb=1-5&_nc_sid=973b4a&_nc_ohc=NSuR_bm2vZAAX-1kYGy&_nc_ht=scontent.fkul8-1.fna&oh=46bdd3dd9e3d12e4e7e5063c5a78ed25&oe=619D1175',
          ),
        ),
        Container(
          height: 60,
          padding: const EdgeInsets.all(10),
          child: TextField(
            controller: nameController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Name',
            ),
          ),
        ),
        Container(
          height: 60,
          padding: const EdgeInsets.all(10),
          child: TextField(
            controller: emailController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Email',
            ),
          ),
        ),
        Container(
          height: 60,
          padding: const EdgeInsets.all(10),
          child: TextField(
            obscureText: true,
            controller: pswdController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
            ),
          ),
        ),
        Container(
          height: 60,
          margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              // color: Colors.black,
              borderRadius: BorderRadius.circular(10)),
          child: DropdownButton(
            value: _value,
            items: const [
              DropdownMenuItem(
                child: Text("Choose Gender"),
                value: 0,
              ),
              DropdownMenuItem(
                child: Text("Male"),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text("Female"),
                value: 2,
              ),
              DropdownMenuItem(
                child: Text("Other"),
                value: 3,
              ),
              DropdownMenuItem(
                child: Text("Rather not to say"),
                value: 4,
              ),
            ],
            onChanged: (int? value) {
              setState(() {
                _value = value!;
              });
            },
          ),
        ),
        Container(
          height: 60,
          padding: const EdgeInsets.all(10),
          child: const SnackBarPage(),
        )
      ] //Text
          ), //Scaffold
    ));
  }
}

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.amber[900]),
        onPressed: () {
          final snackBar = SnackBar(
            content: const Text('You have succesfully logged in'),
            action: SnackBarAction(
              label: 'Close',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
                // Some code to undo the change.
              },
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text('Sign Up'),
      ),
    );
  }
}
