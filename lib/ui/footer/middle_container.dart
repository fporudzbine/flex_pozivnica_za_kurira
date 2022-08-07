import 'package:flex_pozivnica_za_kurira/labels.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MiddleContainer extends StatelessWidget {
  const MiddleContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Color(0xffc0ad93),
      child: MediaQuery.of(context).size.width > 1200 ? IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                width: 100,
                height: 100,
                child: Image.asset('assets/images/viber_icon.png'),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(kViberMessage, style: TextStyle(fontSize: 20, color: Colors.white),),
                ),
                Text(kFlexPhoneNumber, style: TextStyle(fontSize: 24, color: Colors.white, letterSpacing: 2), textAlign: TextAlign.center),
              ],
            ),
            SizedBox(width: 100),
            VerticalDivider(color: Colors.white, indent: 32, endIndent: 32,),
            Padding(
              padding: EdgeInsets.only(left: 101),
              child: Row(
                children: [
                  Text(kCallUsAnyTime, style: TextStyle(color: Color(0xFFD62F2F), fontSize: 24),),
                  Text(kAnyWhere, style: TextStyle(color: Color(0xFFF6F6F6), fontSize: 24),)
                ],
              ),
            ),
          ],
        ),
      ) : Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30.0, bottom: 30, left: 20, right: 10),
            child: Container(
              width: 100,
              height: 100,
              child: Image.asset('assets/images/viber_icon.png'),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(kViberMessage, style: TextStyle(fontSize: 20, color: Colors.white),),
              ),
              Text(kFlexPhoneNumber, style: TextStyle(fontSize: 24, color: Colors.white, letterSpacing: 2), textAlign: TextAlign.center),
            ],
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.only(left: 20.0, top: 20, bottom: 20),
            child: MediaQuery.of(context).size.width > 450 ? Row(
              children: [
                Text(kCallUsAnyTime, style: TextStyle(color: Color(0xFFD62F2F), fontSize: 24),),
                Text(kAnyWhere, style: TextStyle(color: Color(0xFFF6F6F6), fontSize: 24),)
              ],
            ) : Column(
              children: [
                Text(kCallUsAnyTime, style: TextStyle(color: Color(0xFFD62F2F), fontSize: 24),),
                SizedBox(height: 10),
                Text(kAnyWhere, style: TextStyle(color: Color(0xFFF6F6F6), fontSize: 24),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
