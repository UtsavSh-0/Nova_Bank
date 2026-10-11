import 'package:flutter/material.dart';

class Bank extends StatefulWidget {
  const Bank({super.key});
  @override
  State<Bank> createState() {
    return _Bankstate();
  }
}

class _Bankstate extends State<Bank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NovaBank'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.language)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.support_agent)),
        ],
      ),
      body: SingleChildScrollView(
       child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
         width: 400,
        height: 180,
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
        margin: const EdgeInsets.symmetric(horizontal: 44),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(2, 6, 23, 1.0),
              Color.fromRGBO(30, 58, 138, 1.0),
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
          border: Border.all(
            color: const Color.fromARGB(255, 251, 204, 204),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'NOVA INFINITE',
              style: TextStyle(
                color: Color.fromARGB(251, 201, 199, 199),
                fontSize: 10,
              ),
            ),
            Text(
              '**** **** **** 4920',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'CARD HOLDER : UTSAV SHARMA',
              style: TextStyle(color: Colors.white54, fontSize: 12),
            ),
          ],
        ),
      ),
   
    );
      
  }
}
