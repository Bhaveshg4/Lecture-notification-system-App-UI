import 'package:flutter/material.dart';
import 'package:flutter_application_1/timetable/civil/done.dart';

class CivilSaturday extends StatefulWidget {
  const CivilSaturday({Key? key}) : super(key: key);

  @override
  _CivilSaturdayState createState() => _CivilSaturdayState();
}

class _CivilSaturdayState extends State<CivilSaturday> {
  final Lecture1satController = TextEditingController();
  final Lecture2satController = TextEditingController();
  final Lecture3satController = TextEditingController();
  final Lecture4satController = TextEditingController();
  final Lecture5satController = TextEditingController();
  final lecture6satController = TextEditingController();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("Civil Saturday Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),
            buildLectureRow("Lecture 1:", Lecture1satController),
            buildLectureRow("Lecture 2:", Lecture2satController),
            const SizedBox(height: 30),
            const SizedBox(height: 30),
            buildBreakContainer(),
            const SizedBox(height: 20),
            buildLectureRow("Lecture 3:", Lecture3satController),
            buildLectureRow("Lecture 4:", Lecture4satController),
            const SizedBox(height: 30),
            const SizedBox(height: 30),
            buildBreakContainer(),
            const SizedBox(height: 30),
            buildLectureRow("Lecture 5:", Lecture5satController),
            buildLectureRow("Lecture 6:", lecture6satController),
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
