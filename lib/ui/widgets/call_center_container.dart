import 'package:flex_pozivnica_za_kurira/labels.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallCenterContainer extends StatelessWidget {
  const CallCenterContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 80.0, bottom: 80),
      child: MediaQuery.of(context).size.width > 1200 ? Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width/8,
          ),
          Container(
            height: 300,
            width: 500,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/call_center.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            height: 240,
            width: 500,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFD9D9D9), width: 1),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  kCallCenter,
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
                SizedBox(height: 20),
                Text(
                  kOurOperators,
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20),
                Text(
                  kCallCenterWorkingTime,
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  kMondayFriday,
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 40),
                Text(
                  kFlexPhoneNumber,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
                ),
              ],
            ),
          ),
        ],
      ) : Column(
        children: [
          Container(
            height: 300,
            width: 500,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/call_center.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            height: 240,
            width: 500,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFD9D9D9), width: 1),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  kCallCenter,
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
                SizedBox(height: 20),
                Text(
                  kOurOperators,
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20),
                Text(
                  kCallCenterWorkingTime,
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  kMondayFriday,
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 40),
                Text(
                  kFlexPhoneNumber,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
