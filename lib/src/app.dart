import 'package:flutter/material.dart';

class App extends StatefulWidget {
@override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Text('$counter'),
        appBar: AppBar(
          title: Text('Lets see some images!'),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: fetchImage,
            child: Icon(Icons.add)),
      ),
    );
  }

  void fetchImage(){
    
  }

}
