import 'package:flex_pozivnica_za_kurira/labels.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppFooter extends StatefulWidget {
  const CustomAppFooter({Key? key}) : super(key: key);

  @override
  State<CustomAppFooter> createState() => _CustomAppFooterState();
}

class _CustomAppFooterState extends State<CustomAppFooter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 350,
      color: Color(0xffc0ad93),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IntrinsicHeight(
            child: Container(
              padding: EdgeInsets.only(top: 50),
              width: MediaQuery.of(context).size.width*0.7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 250,
                        height: 80,
                        child: Image.asset('assets/images/flex_logo.png'),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: EdgeInsets.only(left: 75.0),
                        child: Row(
                          children: [
                            Container(
                                width: 30,
                                height: 30,
                                child: Image.asset('assets/images/location_icon.png')),
                            SizedBox(width: 10),
                            Text(kBelgrade, style: TextStyle(fontSize: 12, color: Colors.white),),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.only(left: 75.0),
                        child: Row(
                          children: [
                            Container(
                                width: 30,
                                height: 30,
                                child: Image.asset('assets/images/email_icon.png')),
                            SizedBox(width: 10),
                            Text(kFlexEmail, style: TextStyle(fontSize: 12, color: Colors.white),),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.only(left: 75.0),
                        child: Row(
                          children: [
                            Container(
                                width: 30,
                                height: 30,
                                child: Image.asset('assets/images/telephone_icon.png')),
                            SizedBox(width: 10),
                            Text(kFlexTelephoneNumberBrackets, style: TextStyle(fontSize: 12, color: Colors.white),),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 100),
                  VerticalDivider(
                    color: Colors.white,
                    width: 1,
                    thickness: 1,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          kServices,
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        SizedBox(height: 20,),
                        Text(kDeliveryBelgrade, style: TextStyle(fontSize: 12, color: Colors.white),),
                        SizedBox(height: 20,),
                        Text(kDeliveryToday, style: TextStyle(fontSize: 12, color: Colors.white),),
                        SizedBox(height: 20,),
                        Text(kDeliveryTomorrow, style: TextStyle(fontSize: 12, color: Colors.white),),
                        SizedBox(height: 20,),
                        Text(kB2C, style: TextStyle(fontSize: 12, color: Colors.white),),
                        SizedBox(height: 20,),
                        Text(kB2B, style: TextStyle(fontSize: 12, color: Colors.white),),
                      ],
                    ),
                  ),
                  Expanded(child: Container(),),
                  VerticalDivider(
                    color: Colors.white,
                    width: 1,
                    thickness: 1,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          kUsefulInformation,
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        SizedBox(height: 20,),
                        Text(kCommonQuestions, style: TextStyle(fontSize: 12, color: Colors.white),),
                        SizedBox(height: 20,),
                        Text(kPriceList, style: TextStyle(fontSize: 12, color: Colors.white),),
                        SizedBox(height: 20,),
                        Text(kConditions, style: TextStyle(fontSize: 12, color: Colors.white),),
                        SizedBox(height: 20,),
                        Text(kReserveDelivery, style: TextStyle(fontSize: 12, color: Colors.white),),
                      ],
                    ),
                  ),
                  Expanded(child: Container(),),
                  VerticalDivider(
                    color: Colors.white,
                    width: 1,
                    thickness: 1,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          kContactUs,
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        SizedBox(height: 20,),
                        Text(kWeAreHereForYourQuestions, style: TextStyle(fontSize: 12, color: Colors.white),),
                        SizedBox(height: 30,),
                        Container(
                            color: Colors.red,
                            width: 144,
                            height: 35,
                            child: Center(child: Text(kUpperCaseContact, style: TextStyle(fontSize: 14, color: Colors.white),))),
                        SizedBox(height: 40),
                        Text(kFollowUs, style: TextStyle(fontSize: 14, color: Colors.white),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: Container(),),
          Divider(color: Colors.white, height: 1),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width*0.7,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(kFlexCopyRight, style: TextStyle(color: Colors.red, fontSize: 10),),
                Expanded(child: Container()),
                Text(kPrivacyPolicy, style: TextStyle(color: Colors.white, fontSize: 10),),
                SizedBox(width: 80,),
                Text(kAboutUs, style: TextStyle(color: Colors.white, fontSize: 10),),
                SizedBox(width: 80,),
                Text(kLowerCaseContact, style: TextStyle(color: Colors.white, fontSize: 10),),
                SizedBox(width: 80,),
                Text(kNews, style: TextStyle(color: Colors.white, fontSize: 10),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
