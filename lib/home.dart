import 'package:flutter/material.dart';
import 'package:flutter_crash_course/coffee_prefs.dart';

// for hot reload of widgets use stateless widget!!!
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coffee Id', style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        )),
        backgroundColor: Colors.brown[400],
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.brown[200],
            padding: const EdgeInsets.all(20),
            child: const Center(
              child: Text('How about a cup of coffee?'),
            ),
          ),
          Container(
            color: Colors.brown[100],
            padding: const EdgeInsets.all(20),
            child: const Center(
              child: CoffeePrefs(),
            ),
          ),
        ],
      ),
    );
  }
}