import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HCI FP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Build Week 1'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Widget _commentButton() {
    return Padding (
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: RaisedButton(
      padding: const EdgeInsets.all(20.0),
      onPressed: () {
        print("Uploads Comment");
      },
      child: const Text(
      'Comment',
      style: TextStyle(fontSize: 30),
      ),
    )
    );
  }

  Widget _starButton() {
    return Padding (
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: RaisedButton(
      padding: const EdgeInsets.all(20.0),
      onPressed: () {
        print("Uploads Star Rating");
      },
      child: const Text(
      'Star Rating',
      style: TextStyle(fontSize: 30),
      ),
    )
    );
  }

  Widget _videoButton() {
    return Padding (
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: RaisedButton(
      padding: const EdgeInsets.all(20.0),
      onPressed: () {
        print("Uploads Video Response");
      },
      child: const Text(
      'Video',
      style: TextStyle(fontSize: 30),
      ),
    )
    );
  }

  Widget _commentSection() {
    return TextField(
      textAlign: TextAlign.center,
      decoration: const InputDecoration(hintText: "Enter your comment here"),
    );
  }

  Widget _starSection() {
    return TextField(
      textAlign: TextAlign.center,
      decoration: const InputDecoration(hintText: "Enter your star rating here (1-5)"),
    );
  }

  Widget _videoSection() {
    return Text("Video selection goes here");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("This Section would be underneath a users content."),
              _commentSection(),
              _commentButton(),
              _starSection(),
              _starButton(),
              _videoSection(),
              _videoButton()
            ],
          ),
        )
        ),
      );
  }
}