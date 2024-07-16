import 'package:flutter/material.dart';
import 'package:freezed_flutt/model/model_user/user.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<User> userList = [
    User(fName: 'Harry', lName: 'Roy', isActive: true),
    User(fName: 'Peter', lName: 'Parker', isActive: false),
    User(fName: 'Smith', lName: 'Steve', isActive: true),
    User(fName: 'Honey', lName: 'Thakur', isActive: true),
    User(fName: 'Rohit', lName: 'Sharma'),
  ];

  //for fromJson
  var map = {
    'fName': 'Ram',
    'lName': 'Thakur',
    'isActive': true,
  };

  //for toJSon
  var user1 = User(fName: 'Honey', lName: 'Singh', isActive: false);

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
          itemCount: userList.length,
          itemBuilder: (context, index) {
            final userData = userList[index];
            return ListTile(
              leading: Text(index.toString()),
              title: Text('${userData.fName}  ${userData.lName}'),
              subtitle: Text('Active : ${userData.isActive}'),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          var user = User.fromJson(map);
          debugPrint(user.toString());

          var mapData = user1.toJson();
          debugPrint(mapData.toString());

          var user2 = user.copyWith(fName: "Money", lName: 'Ray');
          debugPrint(user2.toString());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
