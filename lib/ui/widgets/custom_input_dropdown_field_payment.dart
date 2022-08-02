import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../labels.dart';
import '../main_screen.dart';

class CustomInputDropDownFieldPayment extends StatefulWidget {
  CustomInputDropDownFieldPayment({required this.label, this.isRequired = false});

  final String label;
  final bool isRequired;


  @override
  State<CustomInputDropDownFieldPayment> createState() => _CustomInputDropDownFieldPaymentState();
}

class _CustomInputDropDownFieldPaymentState extends State<CustomInputDropDownFieldPayment> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child:  widget.isRequired ? Row(
              children: [
                Text(widget.label, style: TextStyle(color: Colors.black, fontSize: 12),),
                Text(" (obavezno)", style: TextStyle(color: Colors.red, fontSize: 12),)
              ],
            ) : Text(widget.label, style: TextStyle(color: Colors.black, fontSize: 12),),
          ),
          SizedBox(height: 5),
          Container(
            width: 260,
            height: 45,
            padding: EdgeInsets.only(left: 8, top: 8),
            decoration: BoxDecoration(color: Color(0xfff4f4f4)),
            child: Padding(
              padding: EdgeInsets.only(bottom: 8.0, right: 8),
              child: DropdownButton<String>(
                isExpanded: true,
                underline: Container(color: Colors.transparent),
                onChanged: (String? newValue) {
                  setState(() {
                    startingValuePayment = newValue!;
                  });
                },
                hint: startingValuePayment == "" ? Text("Primalac/Pošiljalac", style: TextStyle(fontSize: 14)) : Text(startingValuePayment, style: TextStyle(fontSize: 14, color: Colors.black)),
                items: <String>['', 'Pošiljalac', 'Primalac'].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}