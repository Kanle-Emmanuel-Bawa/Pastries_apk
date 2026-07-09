import 'package:flutter/material.dart';
import 'loginscreen.dart';

void main() {}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.blue,
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: 600,
            child: Image.asset('asset/images/forlogin.jpg', fit: BoxFit.cover),
          ),
          const Center(child: Text('Welcome to the home page')),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        height: 38,
        child: Row(
          children: [
            Expanded(child: Icon(Icons.home)),
            Expanded(child: Icon(Icons.settings)),
            Expanded(
              child: TextButton(
                onPressed: () => Navigator.of(context).pop(LoginScreen()),
                child: Icon(Icons.exit_to_app_rounded),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
