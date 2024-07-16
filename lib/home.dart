import 'package:flutter/material.dart';
import 'package:freezed_flutt/model/user.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //for fromJson
  var map = {
    'fName': 'Ram',
    'lName': 'Thakur',
    'isActive': true,
  };

  //for toJSon
  var user = User(fName: 'Honey', lName: 'Singh', isActive: false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Freezed'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        margin: const EdgeInsets.all(15),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile();
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          var user = User.fromJson(map);
          print(user);

          var mapData = user.toJson();
          print(mapData);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
