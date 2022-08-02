import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../labels.dart';
import '../main_screen.dart';

class CustomInputDropDownFieldDelivery extends StatefulWidget {
  const CustomInputDropDownFieldDelivery({required this.label});

  final String label;


  @override
  State<CustomInputDropDownFieldDelivery> createState() => _CustomInputDropDownFieldDeliveryState();
}

class _CustomInputDropDownFieldDeliveryState extends State<CustomInputDropDownFieldDelivery> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(widget.label, style: TextStyle(color: Colors.black, fontSize: 12),),
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
                    startingValueDelivery = newValue!;
                  });
                },
                hint: startingValueDelivery == "" ? Text("-- izaberi uslugu --", style: TextStyle(fontSize: 14)) : Text(startingValueDelivery, style: TextStyle(fontSize: 14, color: Colors.black)),
                items: <String>['', 'Danas za danas', 'Danas za sutra do 12h', 'Danas za sutra do 18h'].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    enabled: value == 'Danas za sutra do 12h' ? false : true,
                    value: value,
                    child: Text(value, style: value == 'Danas za sutra do 12h' ? TextStyle(color: Colors.black12) : TextStyle(color: Colors.black),),
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
