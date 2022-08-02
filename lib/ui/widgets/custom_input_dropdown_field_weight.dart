import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../labels.dart';
import '../main_screen.dart';

class CustomInputDropDownFieldWeight extends StatefulWidget {
  CustomInputDropDownFieldWeight({required this.label, this.isRequired = false});

  final String label;
  final bool isRequired;


  @override
  State<CustomInputDropDownFieldWeight> createState() => _CustomInputDropDownFieldWeightState();
}

class _CustomInputDropDownFieldWeightState extends State<CustomInputDropDownFieldWeight> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: widget.isRequired ? Row(
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
            decoration: BoxDecoration(color:Color(0xfff4f4f4)),
            child: Padding(
              padding: EdgeInsets.only(bottom: 8.0, right: 8),
              child: DropdownButton<String>(
                isExpanded: true,
                underline: Container(color: Colors.transparent),
                onChanged: (String? newValue) {
                  setState(() {
                    startingValueWeight = newValue!;
                  });
                },
                hint: startingValueWeight == "" ? Text("0.5kg - 50kg", style: TextStyle(fontSize: 14)) : Text(startingValueWeight, style: TextStyle(fontSize: 14, color: Colors.black)),
                items: <String>['', '0kg - 0.5kg', '0.5kg - 1kg', '1kg - 2kg', '2kg - 5kg', '5kg - 10kg', '10kg - 15kg', '15kg - 20kg', '20kg - 30kg', '30kg - 50kg', 'Bicikl', 'Televizor do 55 incha', 'Guma putnička', 'Guma poluteretna', 'Guma teretna', 'Guma putnička sa felnom', 'Guma poluteretna sa felnom', 'Guma teretna sa felnom', 'Traktorska guma', 'Traktorska guma sa felnom', 'Menjač manji', 'Menjač automatski', 'Auto motor'].map<DropdownMenuItem<String>>((String value) {
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