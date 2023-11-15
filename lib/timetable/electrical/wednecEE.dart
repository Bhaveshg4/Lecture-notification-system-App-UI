import 'package:flutter/material.dart';
import 'package:flutter_application_1/timetable/electrical/DoneEle.dart';

class EEWednesday extends StatefulWidget {
  const EEWednesday({Key? key}) : super(key: key);

  @override
  _EEWednesdayState createState() => _EEWednesdayState();
}

class _EEWednesdayState extends State<EEWednesday> {
  final TextEditingController _lecture1EEwedController =
      TextEditingController();
  final TextEditingController _lecture2EEwedController =
      TextEditingController();
  final TextEditingController _lecture3EEwedController =
      TextEditingController();
  final TextEditingController _lecture4EEwedController =
      TextEditingController();
  final TextEditingController _lecture5EEwedController =
      TextEditingController();
  final TextEditingController _lecture6EEwedController =
      TextEditingController();
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("Elect. Engg. Wednesday Time Table"),
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
                    controller: _lecture1EEwedController,
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
                    controller: _lecture2EEwedController,
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
                    controller: _lecture3EEwedController,
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
                    controller: _lecture4EEwedController,
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
                    controller: _lecture5EEwedController,
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
                    controller: _lecture6EEwedController,
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
                      MaterialPageRoute(builder: (context) => const DoneEle()),
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
