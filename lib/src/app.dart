import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import './models/image_model.dart';
import 'dart:convert';
import './widgets/image_list.dart';

class App extends StatefulWidget {
@override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;
  List<ImageModel> images = [];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ImageList(images),
        appBar: AppBar(
          title: Text('Lets see some images!'),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: fetchImage,
            child: Icon(Icons.add)),
      ),
    );
  }



  void fetchImage() async {
    counter++;
    final response = await get('https://jsonplaceholder.typicode.com/photos/$counter');
    var imageModel =ImageModel.fromJSON(json.decode(response.body));
    setState(() {
    images.add(imageModel);
    });
  }

}
