import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Center(
          // TODO Creating Bloc for checking whether am i Connected to Internet / Wifi or not
          child: Text('Loading...'),
        ),
      ),
    );
  }
}
