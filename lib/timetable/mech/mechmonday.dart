import 'package:flutter/material.dart';
import 'package:flutter_application_1/timetable/mech/DoneMech.dart';

class MechMonday extends StatefulWidget {
  const MechMonday({Key? key}) : super(key: key);

  @override
  _MechMondayState createState() => _MechMondayState();
}

class _MechMondayState extends State<MechMonday> {
  final TextEditingController _lecture1MechmonController =
      TextEditingController();
  final TextEditingController _lecture2MechmonController =
      TextEditingController();
  final TextEditingController _lecture3MechmonController =
      TextEditingController();
  final TextEditingController _lecture4MechmonController =
      TextEditingController();
  final TextEditingController _lecture5MechmonController =
      TextEditingController();
  final TextEditingController _lecture6MechmonController =
      TextEditingController();
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("Mechanical Monday Time Table"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  "Lecture 1:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 60,
                  width: 250,
                  child: TextField(
                    controller: _lecture1MechmonController,
                    decoration: const InputDecoration(
                      labelText: 'Enter lecture name',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  "Lecture 2:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 60,
                  width: 250,
                  child: TextField(
                    controller: _lecture2MechmonController,
                    decoration: const InputDecoration(
                      labelText: 'Enter lecture name',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            // Repeat the above block for Lecture 3, 4, 5, and 6
            const SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.center,
              height: 28,
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.amber),
              child: const Text(
                "Break",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  "Lecture 3:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 60,
                  width: 250,
                  child: TextField(
                    controller: _lecture3MechmonController,
                    decoration: const InputDecoration(
                      labelText: 'Enter lecture name',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  "Lecture 4:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 60,
                  width: 250,
                  child: TextField(
                    controller: _lecture4MechmonController,
                    decoration: const InputDecoration(
                      labelText: 'Enter lecture name',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.center,
              height: 28,
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.amber),
              child: const Text(
                "Break",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  "Lecture 5:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 60,
                  width: 250,
                  child: TextField(
                    controller: _lecture5MechmonController,
                    decoration: const InputDecoration(
                      labelText: 'Enter lecture name',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  "Lecture 6:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 60,
                  width: 250,
                  child: TextField(
                    controller: _lecture6MechmonController,
                    decoration: const InputDecoration(
                      labelText: 'Enter lecture name',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 40, right: 40),
              child: Divider(
                thickness: 3,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: _isChecked,
                  onChanged: (value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                ),
                const Text(
                  "I agree to save changes",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: InkWell(
                onTap: () {
                  if (_isChecked) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const DoneMech()),
                    );
                  } else {
                    // Display a message or take appropriate action if the checkbox is not checked
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text("Alert"),
                        content: const Text("Please agree to save changes."),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("OK"),
                          ),
                        ],
                      ),
                    );
                  }
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    "SAVE CHANGES",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
