import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final pswdController = TextEditingController();

  final _value = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Hello Deriv"),
        backgroundColor: Colors.amber[900],
        elevation: 50.0,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Menu Icon',
          onPressed: () {},
        ), //IconButton
      ), //AppBar
      body: ListView(children: <Widget>[
        Center(
          child: Container(
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
          // height: 60,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: DropdownButton(
            value: _value,
            items: const [
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

            // onChanged: (int? value) {
            //   setState(() {
            //     _value = value!;
            //   });
            // },
          ),
        ),
        Container(
            height: 50,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.amber[900],
              ),
              child: const Text('Sign Up'),
              onPressed: () {
                print(nameController.text);
                print(emailController.text);
                print(pswdController.text);
              },
            )),
      ] //Text
          ), //Scaffold
    ));
  }
}
