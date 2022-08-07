import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../labels.dart';

class CustomAppHeader extends StatelessWidget {
  const CustomAppHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/header_background_image.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      height: 600,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IntrinsicHeight(
            child: MediaQuery.of(context).size.width > 750 ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width/6,
                ),
                Text('Pozovite nas bilo kad. Stižemo bilo gde!', style: TextStyle(fontSize: 16, color: Colors.white),),
                Expanded(child: Container()),
                VerticalDivider(color: Colors.white, width: 1,),
                SizedBox(width: 15,),
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      child: Image.asset('assets/images/telephone_icon.png'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0, top: 20, bottom: 10),
                      child: Text(kFlexPhoneNumber, style: TextStyle(fontSize: 16, color: Colors.white),),
                    ),
                  ],
                ),
                SizedBox(width: 15,),
                VerticalDivider(color: Colors.white, width: 1,),
                Container(
                  width: MediaQuery.of(context).size.width/8,
                ),
              ],
            ) : Column(
              children: [
                Text('Pozovite nas bilo kad. Stižemo bilo gde!', style: TextStyle(fontSize: 16, color: Colors.white),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      child: Image.asset('assets/images/telephone_icon.png'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0, top: 20, bottom: 10),
                      child: Text(kFlexPhoneNumber, style: TextStyle(fontSize: 16, color: Colors.white),),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(color: Colors.white, height: 1),
          MediaQuery.of(context).size.width > 850 ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width/8,
              ),
              Expanded(
                child: Container(
                  height: 100,
                  child: Image.asset('assets/images/flex_logo.png'),
                ),
              ),
              Expanded(child: Container()),
              Text('Usluge', style: TextStyle(color: Colors.white, fontSize: 16),),
              SizedBox(width: 70),
              Text('Pocetna', style: TextStyle(color: Colors.white, fontSize: 16),),
              SizedBox(width: 70),
              Text('Zakazi kurira', style: TextStyle(color: Colors.white, fontSize: 16),),
              SizedBox(width: 70),
              Text('Cenovnik  ', style: TextStyle(color: Colors.white, fontSize: 16),),
              SizedBox(width: 70),
              Text('Kontakt', style: TextStyle(color: Colors.white, fontSize: 16),),
              Container(
                width: MediaQuery.of(context).size.width/8,
              ),
            ],
          ) : Padding(
            padding: EdgeInsets.only(left: 50.0, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Container(
                    height: 50,
                    child: Image.asset('assets/images/flex_logo.png'),
                  ),
                ),
                SizedBox(height: 20),
                Text('Usluge', style: TextStyle(color: Colors.white, fontSize: 16),),
                SizedBox(height: 20),
                Text('Pocetna', style: TextStyle(color: Colors.white, fontSize: 16),),
                SizedBox(height: 20),
                Text('Zakazi kurira', style: TextStyle(color: Colors.white, fontSize: 16),),
                SizedBox(height: 20),
                Text('Cenovnik  ', style: TextStyle(color: Colors.white, fontSize: 16),),
                SizedBox(height: 20),
                Text('Kontakt', style: TextStyle(color: Colors.white, fontSize: 16),),
              ],
            ),
          ),
          Divider(color: Colors.white, height: 1),
          SizedBox(height: 100),
          Column(
            children: [
              Row(
                children: [
                  MediaQuery.of(context).size.width > 450 ?
                  Container(
                    width: MediaQuery.of(context).size.width/4.4,
                  ) : SizedBox(),
                  MediaQuery.of(context).size.width > 350 ? Text("Pozivnica za kurira", style: TextStyle(color: Colors.white, fontSize: 32, letterSpacing: 2),)
                      : Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text("Pozivnica za kurira", style: TextStyle(color: Colors.white, fontSize: 32, letterSpacing: 2),),
                  ),
                ],
              ),
              // SizedBox(height: 10),
              Row(
                children: [
                  MediaQuery.of(context).size.width > 450 ?
                  Container(
                    width: MediaQuery.of(context).size.width/5,
                  ) : SizedBox(),
                  Container(
                    padding: EdgeInsets.only(bottom: 7, left: 7),
                    width: 60,
                    height: 60,
                    child: Image.asset('assets/images/home_icon.png'),
                  ),
                  Text("Početna - Flex kurirska služba", style: TextStyle(fontSize: 16, color: Colors.white, letterSpacing: 2),),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
