import 'package:flutter/material.dart';
import 'package:flutter_application_1/timetable/civil/done.dart';

class CivilFriday extends StatefulWidget {
  const CivilFriday({Key? key}) : super(key: key);

  @override
  _CivilFridayState createState() => _CivilFridayState();
}

class _CivilFridayState extends State<CivilFriday> {
  final TextEditingController _lecture1FriController = TextEditingController();
  final TextEditingController _lecture2FriController = TextEditingController();
  final TextEditingController _lecture3FriController = TextEditingController();
  final TextEditingController _lecture4FriController = TextEditingController();
  final TextEditingController _lecture5FriController = TextEditingController();
  final TextEditingController _lecture6FriController = TextEditingController();
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("Civil Friday Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),
            buildLectureRow("Lecture 1:", _lecture1FriController),
            buildLectureRow("Lecture 2:", _lecture2FriController),
            const SizedBox(height: 30),
            const SizedBox(height: 30),
            buildBreakContainer(),
            const SizedBox(height: 20),
            buildLectureRow("Lecture 3:", _lecture3FriController),
            buildLectureRow("Lecture 4:", _lecture4FriController),
            const SizedBox(height: 30),
            const SizedBox(height: 30),
            buildBreakContainer(),
            const SizedBox(height: 30),
            buildLectureRow("Lecture 5:", _lecture5FriController),
            buildLectureRow("Lecture 6:", _lecture6FriController),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.only(left: 40, right: 40),
              child: Divider(
                thickness: 3,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            buildCheckbox(),
            buildSaveChangesButton(context),
          ],
        ),
      ),
    );
  }

  Widget buildLectureRow(String label, TextEditingController controller) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 60,
          width: 250,
          child: TextField(
            controller: controller,
            decoration: const InputDecoration(labelText: 'Enter lecture name'),
          ),
        ),
      ],
    );
  }

  Widget buildBreakContainer() {
    return Container(
      alignment: Alignment.center,
      height: 28,
      width: double.infinity,
      decoration: const BoxDecoration(color: Colors.amber),
      child: const Text(
        "Break",
        style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget buildSaveChangesButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 40, top: 10),
      child: InkWell(
        onTap: _isChecked
            ? () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DoneCivil(),
                  ),
                );
              }
            : null,
        child: Container(
          alignment: Alignment.center,
          height: 40,
          width: double.infinity,
          decoration: BoxDecoration(
            color: _isChecked ? Colors.greenAccent : Colors.grey,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Text(
            "SAVE CHANGES",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }

  Widget buildCheckbox() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        children: [
          Checkbox(
            value: _isChecked,
            onChanged: (value) {
              setState(() {
                _isChecked = value!;
              });
            },
          ),
          const Text("I agree to save changes"),
        ],
      ),
    );
  }
}
