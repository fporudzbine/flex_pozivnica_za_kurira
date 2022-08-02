import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:number_inc_dec/number_inc_dec.dart';

class CustomIncrementDecrementField extends StatefulWidget {
  CustomIncrementDecrementField({required this.label, required this.controllerNumber});

  final String label;
  TextEditingController controllerNumber = TextEditingController();

  @override
  State<CustomIncrementDecrementField> createState() => _CustomIncrementDecrementFieldState();
}

class _CustomIncrementDecrementFieldState extends State<CustomIncrementDecrementField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              widget.label,
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
          ),
          SizedBox(height: 5),
          Container(
            width: 260,
            height: 45,
            color: Color(0xfff4f4f4),
            child: NumberInputWithIncrementDecrement(
              incIconDecoration: BoxDecoration(border: Border(bottom: BorderSide.none)),
              style: TextStyle(color: Colors.black),
              widgetContainerDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0.0),
                border: Border.all(
                  color: Color(0xfff4f4f4),
                  width: 1.0,
                ),
              ),
              numberFieldDecoration: InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(0)),
              ),
              incIconSize: 20,
              decIconSize: 20,
              textAlign: TextAlign.left,
              controller: widget.controllerNumber,
              min: 1,
              max: 10,
            ),
          ),
        ],
      ),
    );
  }
}

