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
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Build Week 2'),
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
  Widget _participantCard() {
    return Container(
      alignment: Alignment.center,
      height: 1250,
      width: 1500,
      color: Colors.blue[50],
      child: Text("Participant Content will go here"),
    );
  }
  
  Widget _commentButton() {
    return RaisedButton(
      onPressed: () {
        print("Uploads Comment");
      },
      child: const Text(
      'Upload Comment',
      style: TextStyle(fontSize: 20),
      ),
    );
  }
  Widget _starButton() {
    return RaisedButton(
      onPressed: () {
        print("Uploads Start Rating");
      },
      child: const Text(
      'Upload Star Rating',
      style: TextStyle(fontSize: 20),
      ),
    );
  }
  Widget _videoButton() {
    return RaisedButton(
      onPressed: () {
        print("Uploads Video");
      },
      child: const Text(
      'Upload Video',
      style: TextStyle(fontSize: 20),
      ),
    );
  }
 
  Widget _commentCard() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(20),
        color: Colors.blue,
        height: 250,
        child: Column(
          children: [
            TextField(
              textAlign: TextAlign.center,
              decoration: const InputDecoration(hintText: "Enter your comment here"),
            ),
            Spacer(),
            _commentButton()
          ]
        ),
      )
    );
  }
 
  Widget _starCard() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(20),
        color: Colors.blue,
        height: 125,
        child: Column(
          children: [
            TextField(
              textAlign: TextAlign.center,
              decoration: const InputDecoration(hintText: "Enter your star rating here (1-5)"),
            ),
            Spacer(),
            _starButton()
          ]
        ),
      )
    );
  }
 
  Widget _videoCard() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(20),
        color: Colors.blue,
        height: 125,
        child: Column(
          children: [
            TextField(
              textAlign: TextAlign.center,
              decoration: const InputDecoration(hintText: "Enter a video URL here"),
            ),
            Spacer(),
            _videoButton()
          ]
        ),
      )
    );
  }
 
  Widget _responseSection() {
    return Container(
      width: 600,
      height: 500,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _commentCard(),
          SizedBox(height: 20),
          _starCard(),
          SizedBox(height: 20),
          _videoCard()
      ],
    )
    );
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
        child: Column(
            children: <Widget>[
              SizedBox(height: 30),
              _participantCard(),
              SizedBox(height: 50),
              _responseSection(),
            ],
          )
        ),
      )
      );
  }
}

