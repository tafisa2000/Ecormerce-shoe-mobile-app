import 'package:flutter/material.dart';
import 'package:nike/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          // const SizedBox(height: 48),

          // logo
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Image.asset(
              'images/nike.png',
              height: 240,
            ),
          ),

          const Text(
            'JUST DO IT',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(height: 24),
          const Text(
            'Brand new snikers and custom kicks with premium quality',
            style: TextStyle(fontSize: 16, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 48),

          GestureDetector(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomePage())),
            child: Container(
              width: 200.0, // Fixed width
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(25),
              child: const Center(
                child: Text(
                  'Shop now',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          )

          //tittle

          //subtittle

          //startnow button
        ]),
      ),
    );
  }
}
