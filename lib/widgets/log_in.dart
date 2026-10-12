import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() {
    return _LoginScreen();
  }
}

class _LoginScreen extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: 
          IconButton(
            onPressed: () {

             Navigator.pop(context);
            },
            icon:const Icon(Icons.arrow_back_ios_new_rounded),
          ),
        

        title: const Text('Phone Identification'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.person_2)),
        ],
      ),
    );
  }
}
