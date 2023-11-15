import 'package:flutter/material.dart';

class ColorChangingContainer extends StatefulWidget {
  const ColorChangingContainer({Key? key}) : super(key: key);

  @override
  _ColorChangingContainerState createState() => _ColorChangingContainerState();
}

class _ColorChangingContainerState extends State<ColorChangingContainer> {
  Color _containerColor = Colors.red;
  String _displayText = 'Absent';

  void _changeColorAndText() {
    setState(() {
      _containerColor =
          _containerColor == Colors.red ? Colors.green : Colors.red;
      _displayText = _displayText == 'Absent' ? 'Present' : 'Absent';
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeColorAndText,
      child: Container(
        decoration: BoxDecoration(
            color: _containerColor, borderRadius: BorderRadius.circular(10)),
        width: 120,
        height: 35,
        child: Center(
          child: Text(
            _displayText,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
