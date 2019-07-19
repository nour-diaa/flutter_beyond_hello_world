import '../models/photo.dart';
import '../models/photo_list.dart';
import '../widgets/menu.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text("Second screen title"),
      ),
      body: Center(
        child: FutureBuilder(
          future: fetchData(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
          return Center(
            child: snapshot.hasData ? PhotoList(photos: snapshot.data,) 
          : CircularProgressIndicator()); 
        },)
      ),
    );
  }
}