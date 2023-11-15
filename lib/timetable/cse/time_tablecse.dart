import 'package:flutter/material.dart';

class TimeTableCSE extends StatelessWidget {
  const TimeTableCSE({Key? key}) : super(key: key);

  Widget buildSession(String time, String subject) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            time,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
          ),
          Text(
            subject,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
          ),
        ],
      ),
    );
  }

  Widget buildDay(String day, List<Widget> sessions) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Text(
          day,
          style: const TextStyle(fontSize: 23, fontWeight: FontWeight.w800),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.amber,
            ),
            height: 600,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: sessions,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: const Text("CSE Time Table"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildDay(
              "Monday",
              [
                buildSession("9:30-10:30", "BDA(VG)/MCOM(SU)"),
                buildSession("10:30-11:30", "CNS(ND)B306"),
                buildSession("11:30-12:00", "Break"),
                buildSession("12:00-1:00", "OE-II(SU)/B306"),
                buildSession("1:00-2:00", "NPTEL"),
                buildSession("2:00-2:15", "Break"),
                buildSession("2:15-3:15", "CNS LAB(ND)/A104"),
                buildSession("3:15-4:15", "CNS LAB(ND)/A104"),
              ],
            ),
            buildDay(
              "Tuesday",
              [
                buildSession("9:30-10:30", "BDA(VG)/MCOM(SU)"),
                buildSession("10:30-11:30", "CNS(ND)B306"),
                buildSession("11:30-12:00", "Break"),
                buildSession("12:00-1:00", "OE-II(SU)/B306"),
                buildSession("1:00-2:00", "NPTEL"),
                buildSession("2:00-2:15", "Break"),
                buildSession("2:15-3:15", "SF(AG)B304/DL(TG)B306"),
                buildSession("3:15-4:15", "LIBRARY"),
              ],
            ),
            buildDay(
              "Wednesday",
              [
                buildSession("9:30-10:30", "SF(AG)/DL(TG)"),
                buildSession("10:30-11:30", "CNS(ND)B306"),
                buildSession("11:30-12:00", "Break"),
                buildSession("12:00-1:00", "OE-II(SU)/B306"),
                buildSession("1:00-2:00", "NPTEL"),
                buildSession("2:00-2:15", "Break"),
                buildSession("2:15-3:15", "MP(SU)/A104"),
                buildSession("3:15-4:15", "MP(SU)/A104"),
              ],
            ),
            buildDay(
              "Thursday",
              [
                buildSession("9:30-10:30", "RM(SZ)/B306"),
                buildSession("10:30-11:30", "BDA(VG)/MCOM(SU)"),
                buildSession("11:30-12:00", "Break"),
                buildSession("12:00-1:00", "OE-II(SU)/B306"),
                buildSession("1:00-2:00", "CNS(ND)/B306"),
                buildSession("2:00-2:15", "Break"),
                buildSession("2:15-3:15", "SF(AG)/DL(TG)"),
                buildSession("3:15-4:15", "NSS"),
              ],
            ),
            buildDay(
              "Friday",
              [
                buildSession("9:30-10:30", "SF(AG)/DL(TG)"),
                buildSession("10:30-11:30", "CNS(ND)B306"),
                buildSession("11:30-12:00", "Break"),
                buildSession("12:00-1:00", "BDA(VG)/MCOM(SU)"),
                buildSession("1:00-2:00", "RM(SZ)/B306"),
                buildSession("2:00-2:15", "Break"),
                buildSession("2:15-3:15", "MP(SU)/A104"),
                buildSession("3:15-4:15", "CNS LAB(ND)/A104"),
              ],
            ),
            buildDay(
              "Saturday",
              [
                buildSession("9:30-10:30", "SPORTS"),
                buildSession("10:30-11:30", "SPORTS"),
                buildSession("11:30-12:00", "Break"),
                buildSession("12:00-1:00", "MP(SU)/A104"),
                buildSession("1:00-2:00", "MP(SU)/A104"),
                buildSession("2:00-2:15", "Break"),
                buildSession("2:15-3:15", "NCC"),
                buildSession("3:15-4:15", "NSS"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
