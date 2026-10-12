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
      body: SingleChildScrollView(
        child:const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome Back ',
              style:TextStyle(
                color:Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Enter your credentials to securely access your NovaBank premier account',
              style:TextStyle(
                color:Color.fromARGB(108, 0, 0, 0),
                fontSize: 14,
              ),
            ),
          ],
          
        )
      )
    );
  }
}
