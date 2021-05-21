import 'package:flutter/material.dart';

class UserModel {
  final int id;
  final String name;
  final String phone;

  UserModel({
    @required this.id,
    @required this.name,
    @required this.phone,
  });
}

class UserScreen extends StatelessWidget {
  List<UserModel> users = [
    UserModel(
      id: 1,
      name: 'Mohamed Ayman',
      phone: '+201030823723',
    ),
    UserModel(
      id: 2,
      name: 'Fahmy Ayman',
      phone: '+201030823723',
    ),
    UserModel(
      id: 3,
      name: 'Ayman Fahmy',
      phone: '+201030823723',
    ),
    UserModel(
      id: 1,
      name: 'Mohamed Ayman',
      phone: '+201030823723',
    ),
    UserModel(
      id: 2,
      name: 'Fahmy Ayman',
      phone: '+201030823723',
    ),
    UserModel(
      id: 3,
      name: 'Ayman Fahmy',
      phone: '+201030823723',
    ),
    UserModel(
      id: 1,
      name: 'Mohamed Ayman',
      phone: '+201030823723',
    ),
    UserModel(
      id: 2,
      name: 'Fahmy Ayman',
      phone: '+201030823723',
    ),
    UserModel(
      id: 3,
      name: 'Ayman Fahmy',
      phone: '+201030823723',
    ),
    UserModel(
      id: 1,
      name: 'Mohamed Ayman',
      phone: '+201030823723',
    ),
    UserModel(
      id: 2,
      name: 'Fahmy Ayman',
      phone: '+201030823723',
    ),
    UserModel(
      id: 3,
      name: 'Ayman Fahmy',
      phone: '+201030823723',
    ),
    UserModel(
      id: 1,
      name: 'Mohamed Ayman',
      phone: '+201030823723',
    ),
    UserModel(
      id: 2,
      name: 'Fahmy Ayman',
      phone: '+201030823723',
    ),
    UserModel(
      id: 3,
      name: 'Ayman Fahmy',
      phone: '+201030823723',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => builodUserItem(users[index]),
        separatorBuilder: (context, index) => Container(
          width: double.infinity,
          height: 1.0,
          color: Colors.grey[300],
        ),
        itemCount: users.length,
      ),
    );
  }

  Widget builodUserItem(UserModel user) => Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              child: Text(
                '${user.id}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${user.name}',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '${user.phone}',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            )
          ],
        ),
      );
}
