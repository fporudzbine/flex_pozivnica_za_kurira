import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multiselect/multiselect.dart';
import '../../labels.dart';
import '../main_screen.dart';

class CustomInputDropDownMultiChoiceField extends StatefulWidget {
  const CustomInputDropDownMultiChoiceField({required this.label});

  final String label;



  @override
  State<CustomInputDropDownMultiChoiceField> createState() => _CustomInputDropDownMultiChoiceFieldState();
}

class _CustomInputDropDownMultiChoiceFieldState extends State<CustomInputDropDownMultiChoiceField> {

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
              child: DropDownMultiSelect(
                onChanged: (List<String> x) {
                  setState(() {
                    selected = x;
                    if (x.contains("SMS")) {
                      x.remove("SMS");
                    }
                  });
                },
                options: ['SMS', 'Potvrda o uručenju' , 'Lično' , 'Potpisana povratna dokumentacija', 'Plaćeni odgovor'],
                selectedValues: selected,
                whenEmpty: '--odaberite iz liste--',
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  contentPadding: EdgeInsets.zero,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}