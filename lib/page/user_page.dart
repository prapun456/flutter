import 'package:flutter/material.dart';

void main() {
  runApp(UserAccount());
}

class UserAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('User Profile'),
        ),
        body: UserProfilePage(),
      ),
    );
  }
}

class UserProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg'),
          ),
          SizedBox(height: 20),
          Text(
            'Putcharapon Kaewmahanil',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text('s6407012663010@email.kmutnb.ac.th'),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Add functionality for editing the profile.
            },
            child: Text('Edit Profile'),
          ),
        ],
      ),
    );
  }
}
