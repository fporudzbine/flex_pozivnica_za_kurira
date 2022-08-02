import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopContainer extends StatelessWidget {
  TopContainer({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, top: 8),
      child: Container(
        width: 300,
        height: 70,
        color: Color(0xffc0ad93),
        child: Center(
          child: Text(label, style: TextStyle(color: Colors.white, fontSize: 24),),
        ),
      ),
    );
  }
}
