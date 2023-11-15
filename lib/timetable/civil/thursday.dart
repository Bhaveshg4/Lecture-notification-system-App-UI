import 'package:flutter/material.dart';
import 'package:flutter_application_1/timetable/civil/done.dart';

class CivilThursday extends StatefulWidget {
  const CivilThursday({Key? key}) : super(key: key);

  @override
  _CivilThursdayState createState() => _CivilThursdayState();
}

class _CivilThursdayState extends State<CivilThursday> {
  final Lecture1thursController = TextEditingController();
  final Lecture2thursController = TextEditingController();
  final Lecture3thursController = TextEditingController();
  final Lecture4thursController = TextEditingController();
  final Lecture5thursController = TextEditingController();
  final lecture6thursController = TextEditingController();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("Civil Thursday Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),
            buildLectureRow("Lecture 1:", Lecture1thursController),
            buildLectureRow("Lecture 2:", Lecture2thursController),
            const SizedBox(height: 30),
            const SizedBox(height: 30),
            buildBreakContainer(),
            const SizedBox(height: 20),
            buildLectureRow("Lecture 3:", Lecture3thursController),
            buildLectureRow("Lecture 4:", Lecture4thursController),
            const SizedBox(height: 30),
            const SizedBox(height: 30),
            buildBreakContainer(),
            const SizedBox(height: 30),
            buildLectureRow("Lecture 5:", Lecture5thursController),
            buildLectureRow("Lecture 6:", lecture6thursController),
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
        onTap: isChecked
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
            color: isChecked ? Colors.greenAccent : Colors.grey,
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
            value: isChecked,
            onChanged: (value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
          const Text("I agree to save changes"),
        ],
      ),
    );
  }
}
