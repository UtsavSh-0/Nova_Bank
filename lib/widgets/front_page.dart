import 'package:flutter/material.dart';
import 'package:nova_bank/widgets/log_in.dart';

class Bank extends StatefulWidget {
  const Bank({super.key});

  @override
  State<Bank> createState() {
    return _BankState();
  }
}

class _BankState extends State<Bank> {
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Bank Card
            Container(
              width: 400,
              height: 180,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
              margin: const EdgeInsets.symmetric(horizontal: 44, vertical: 20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
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
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: Text('Next-Gen Banking', textAlign: TextAlign.center),
              ),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Center(child: Text('Developing Thingss..')),
            ),
            const SizedBox(height: 30),
            // Open Free Account Button
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 44,
                  vertical: 20,
                ),
                child: OutlinedButton.icon(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 6, 1, 94),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 16,
                    ),
                  ),
                  icon: const Icon(Icons.arrow_right_alt),
                  label: const Text('Open Free Account'),
                ),
              ),
            ),

            // Login Button
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 44,
                  vertical: 10,
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Login()),
                    );
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.amberAccent,
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  child: const Text('Log in with existing account'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
