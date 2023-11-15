import 'package:flutter/material.dart';

class DoneMech extends StatelessWidget {
  const DoneMech({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: const Text("Done!"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.amber),
              child: const Icon(
                Icons.done_rounded,
                color: Color.fromARGB(255, 114, 240, 105),
                size: 100,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Letures Scheduled Successfully",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
