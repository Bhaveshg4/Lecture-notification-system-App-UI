import 'package:flutter/material.dart';
import 'package:flutter_application_1/timetable/cse/doneCSE.dart';

class CSEFriday extends StatefulWidget {
  const CSEFriday({Key? key}) : super(key: key);

  @override
  _CSEFridayState createState() => _CSEFridayState();
}

class _CSEFridayState extends State<CSEFriday> {
  final Lecture1csefriController = TextEditingController();
  final Lecture2csefriController = TextEditingController();
  final Lecture3csefriController = TextEditingController();
  final Lecture4csefriController = TextEditingController();
  final Lecture5friController = TextEditingController();
  final lecture6friController = TextEditingController();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("CSE Friday Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),
            buildLectureRow("Lecture 1:", Lecture1csefriController),
            buildLectureRow("Lecture 2:", Lecture2csefriController),
            const SizedBox(height: 30),
            const SizedBox(height: 30),
            buildBreakContainer(),
            const SizedBox(height: 20),
            buildLectureRow("Lecture 3:", Lecture3csefriController),
            buildLectureRow("Lecture 4:", Lecture4csefriController),
            const SizedBox(height: 30),
            const SizedBox(height: 30),
            buildBreakContainer(),
            const SizedBox(height: 30),
            buildLectureRow("Lecture 5:", Lecture5friController),
            buildLectureRow("Lecture 6:", lecture6friController),
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
                    builder: (context) => const DoneCSE(),
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
