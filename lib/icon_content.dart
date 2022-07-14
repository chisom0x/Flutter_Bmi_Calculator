import 'package:flutter/material.dart';

class Iconcontent extends StatelessWidget {
  final String label;
  final IconData icon;
  Iconcontent({required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 18,
            color: Color(0xFF8D8E98),
          ),
        )
      ],
    );
  }
}

