import 'package:flutter/material.dart';
import 'package:flutter_application_1/timetable/mech/DoneMech.dart';

class MechTuesday extends StatefulWidget {
  const MechTuesday({Key? key}) : super(key: key);

  @override
  _MechTuesdayState createState() => _MechTuesdayState();
}

class _MechTuesdayState extends State<MechTuesday> {
  final TextEditingController _lecture1MechtueController =
      TextEditingController();
  final TextEditingController _lecture2MechtueController =
      TextEditingController();
  final TextEditingController _lecture3MechtueController =
      TextEditingController();
  final TextEditingController _lecture4MechtueController =
      TextEditingController();
  final TextEditingController _lecture5MechtueController =
      TextEditingController();
  final TextEditingController _lecture6MechtueController =
      TextEditingController();
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("Mechanical Tuesday Time Table"),
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
                    controller: _lecture1MechtueController,
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
                    controller: _lecture2MechtueController,
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
                    controller: _lecture3MechtueController,
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
                    controller: _lecture4MechtueController,
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
                    controller: _lecture5MechtueController,
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
                    controller: _lecture6MechtueController,
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
