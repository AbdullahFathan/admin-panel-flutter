import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  static const String route = "/user";
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("User Page")),
    );
  }
}
