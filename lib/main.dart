import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final pswdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
        backgroundColor: Colors.greenAccent[400],
        elevation: 50.0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Menu Icon',
          onPressed: () {},
        ), //IconButton
      ), //AppBar
      body: ListView(children: <Widget>[
        Center(
          child: Container(
            padding: EdgeInsets.only(top: 40),
            child: Text(
              "Hello World",
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
        Container(
          child: Image.network(
            'https://scontent.fkul8-1.fna.fbcdn.net/v/t1.6435-9/167989111_122052736569342_2932569327583921419_n.png?_nc_cat=107&ccb=1-5&_nc_sid=973b4a&_nc_ohc=NSuR_bm2vZAAX-1kYGy&_nc_ht=scontent.fkul8-1.fna&oh=46bdd3dd9e3d12e4e7e5063c5a78ed25&oe=619D1175',
            width: 300,
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: TextField(
            controller: nameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Name',
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: TextField(
            controller: emailController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Email',
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: TextField(
            controller: pswdController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
            ),
          ),
        ),
        Container(),
        Container(
            height: 100,
            width: 50,
            padding: EdgeInsets.all(10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.amber[900],
              ),
              child: Text('Button'),
              onPressed: () {
                // print(inputController.text);
              },
            )),
      ] //Text
          ), //Scaffold
    ));
  }
}
