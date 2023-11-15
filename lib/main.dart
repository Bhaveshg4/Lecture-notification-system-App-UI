import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/adminlogin.dart';
import 'package:flutter_application_1/pages/facultylogin.dart';

void main() {
  runApp(const ClassClockApp());
}

class ClassClockApp extends StatelessWidget {
  const ClassClockApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'ClassClock',
            style: TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.teal,
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        body: Center(
          child: LayoutBuilder(
            builder: (context, constraints) {
              double originalFontSize = constraints.maxWidth / 12;
              double increasedFontSize = originalFontSize * 1.15;
              double buttonWidth = constraints.maxWidth / 2.5;

              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(height: 20),
                    SizedBox(
                      child: Image.asset("asset/Nit_logo.png"),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 0.1 * constraints.maxHeight),
                      child: Text(
                        'Hey, there',
                        style: TextStyle(
                          fontSize: increasedFontSize * 1.3,
                          color: Colors.teal,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 7, vertical: 14),
                      child: Text(
                        'Welcome! Log in to continue...',
                        style: TextStyle(
                          fontSize: increasedFontSize * 0.6,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 0.1 * constraints.maxHeight),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const AdminLoginPage()));
                          },
                          child: Container(
                            width: buttonWidth,
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Center(
                              child: Text(
                                'Admin login',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: increasedFontSize * 0.5,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 0.05 * constraints.maxWidth),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const FacultyLogin()));
                          },
                          child: Container(
                            width: buttonWidth,
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Center(
                              child: Text(
                                'Faculty login',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: increasedFontSize * 0.5,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
