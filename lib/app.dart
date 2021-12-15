import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
            )
          ],
        ),
        body: Center(
          child: Text(user.email.toString()),
        ),
      ),
    );
  }
}
