import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:widgets_basic/sign_in/sign_in.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignUpScreen(),
    );
  }
}

class SignUpScreen extends StatelessWidget {
  final TextEditingController fullController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void createInWithEmailAndPassword(BuildContext context) async {
    try {
      String email = usernameController.text;
      String password = passwordController.text;
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // If sign-up is successful, you can navigate to the login or another page.
      // For example, you can navigate to the Sign In screen.
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => SignInScreen(),
        ),
      );
    } catch (error) {
      // Handle sign-up errors here (e.g., duplicate email, weak password, etc.)
      print('Sign-up error: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Sign Up')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: fullController,
              decoration: InputDecoration(
                labelText: 'Full Name',
                hintText: 'Name-Surname',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.black),
                  gapPadding: 10,
                ),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: 'Email or Username',
                hintText: 'Register for Email or Username',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.black),
                  gapPadding: 10,
                ),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Register for Password',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.black),
                  gapPadding: 10,
                ),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Call the sign-up function
                createInWithEmailAndPassword(context);
              },
              child: Text('Sign Up'),
            ),
            SizedBox(height: 16.0),
            TextButton(
              onPressed: () {
                // Navigate to the Sign In screen
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SignInScreen(),
                  ),
                );
              },
              child: Text('Go to Sign In'),
            ),
          ],
        ),
      ),
    );
  }
}
