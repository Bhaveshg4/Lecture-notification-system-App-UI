import 'package:flutter/material.dart';
import 'package:flutter_application_1/timetable/it/fridayit.dart';
import 'package:flutter_application_1/timetable/it/mondayit.dart';
import 'package:flutter_application_1/timetable/it/saturdayit.dart';
import 'package:flutter_application_1/timetable/it/thursdayit.dart';
import 'package:flutter_application_1/timetable/it/tuesdayit.dart';
import 'package:flutter_application_1/timetable/it/wednesdayit.dart';

class ITtt extends StatelessWidget {
  const ITtt({super.key});

  Widget buildTimeTableCard(
    BuildContext context,
    String day,
    String route,
    List<Color> gradientColors,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: InkWell(
        onTap: () {
          switch (day) {
            case "Monday":
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ITMonday()));
              break;
            case "Tuesday":
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ITTuesday()));
              break;
            case "Wednesday":
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ITWednesday()));
              break;
            case "Thursday":
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ITThursday()));
              break;
            case "Friday":
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ITFriday()));
              break;
            case "Saturday":
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ITSaturday()));
              break;
          }
        },
        child: Container(
          height: 80,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromARGB(255, 58, 57, 58),
              width: 2.0,
            ),
            gradient: LinearGradient(
              colors: gradientColors,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: const [0.0, 1.0],
              tileMode: TileMode.clamp,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Set Time Table for $day",
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              const Icon(Icons.arrow_forward_ios_rounded)
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("IT Time Table"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.grey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              buildTimeTableCard(context, "Monday", "",
                  [const Color(0xFFFFDAB9), const Color(0xFFFFB6C1)]),
              buildTimeTableCard(context, "Tuesday", "",
                  [const Color(0xFF87CEFA), const Color(0xFFE6E6FA)]),
              buildTimeTableCard(context, "Wednesday", "",
                  [const Color(0xFFFFA07A), const Color(0xFFFFE4E1)]),
              buildTimeTableCard(context, "Thursday", "",
                  [const Color(0xFFFFFFE0), const Color(0xFFEEE8AA)]),
              buildTimeTableCard(context, "Friday", "",
                  [const Color(0xFFE0FFFF), const Color(0xFFF0F8FF)]),
              buildTimeTableCard(context, "Saturday", "",
                  [const Color(0xFF90EE90), const Color(0xFFF0FFF0)]),
            ],
          ),
        ),
      ),
    );
  }
}
