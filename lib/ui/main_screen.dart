import 'dart:convert';
import 'dart:io';

import 'package:flex_pozivnica_za_kurira/overall_price.dart';
import 'package:flex_pozivnica_za_kurira/ui/footer/custom_app_footer.dart';
import 'package:flex_pozivnica_za_kurira/ui/widgets/call_center_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../labels.dart';
import 'columns/delivery_details_column.dart';
import 'columns/receiver_column.dart';
import 'columns/sender_column.dart';
import 'footer/middle_container.dart';
import 'header/custom_app_header.dart';
import 'package:http/http.dart' as http;


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

TextEditingController controllerSenderNameSurname = TextEditingController();
TextEditingController controllerSenderCity = TextEditingController();
TextEditingController controllerSenderAddress= TextEditingController();
TextEditingController controllerSenderHomeNumber= TextEditingController();
TextEditingController controllerSenderPostalNumber= TextEditingController();
TextEditingController controllerSenderPhone = TextEditingController();
TextEditingController controllerSenderContact= TextEditingController();
TextEditingController controllerSenderEmail= TextEditingController();
TextEditingController controllerSenderNote= TextEditingController();
TextEditingController controllerReceiverNameSurname = TextEditingController();
TextEditingController controllerReceiverCity = TextEditingController();
TextEditingController controllerReceiverAddress = TextEditingController();
TextEditingController controllerReceiverHomeNumber= TextEditingController();
TextEditingController controllerReceiverPostalNumber= TextEditingController();
TextEditingController controllerReceiverPhone = TextEditingController();
TextEditingController controllerReceiverContact = TextEditingController();
TextEditingController controllerReceiverNote = TextEditingController();
TextEditingController controllerDeliveryContent = TextEditingController();
TextEditingController controllerDeliveryBuyOut = TextEditingController();
TextEditingController controllerDeliveryValue = TextEditingController();
TextEditingController controllerNumber = TextEditingController();
TextEditingController controllerBankAccountNumber = TextEditingController();
String startingValueWeight = '';
String startingValueDelivery = '';
String startingValuePayment = '';
List<String> selected = [];
int overallPrice = 0;
String cutDeliveryValue = '';
String cutBuyOut = '';


class _MainScreenState extends State<MainScreen> {


  bool isClicked = false;
  Future<http.Response> sendEmail() async {
    final queryParameters = {
      'senderNameSurname': controllerSenderNameSurname.text,
      'senderCity' : controllerSenderCity.text,
      'senderAddress': controllerSenderAddress.text,
      'senderHomeNumber' : controllerSenderHomeNumber.text,
      'senderPostalNumber' : controllerSenderPostalNumber.text,
      'senderPhone' : controllerSenderPhone.text,
      'senderContact' : controllerSenderContact.text,
      'senderEmail' : controllerSenderEmail.text,
      'senderNote' : controllerSenderNote.text,
      'receiverNameSurname' : controllerReceiverNameSurname.text,
      'receiverCity' : controllerReceiverCity.text,
      'receiverAddress' : controllerReceiverAddress.text,
      'receiverHomeNumber' : controllerReceiverHomeNumber.text,
      'receiverPostalNumber' : controllerReceiverPostalNumber.text,
      'receiverPhone' : controllerReceiverPhone.text,
      'receiverContact' : controllerReceiverContact.text,
      'receiverNote' : controllerReceiverNote.text,
      'deliveryContent' : controllerDeliveryContent.text,
      'deliveryBuyOut' : controllerDeliveryBuyOut.text,
      'deliveryValue' : controllerDeliveryValue.text,
      'deliveryWeight' : startingValueWeight,
      'deliveryPayment' : startingValuePayment,
      'deliveryTime' : startingValueDelivery,
      'additionalServices' : selected,
      'packageNumber' : controllerNumber.text,
      'bankAccountNumber' : controllerBankAccountNumber.text,
      'overallPrice' : context.read<OverallPrice>().stringSum,
    };

    final uri = Uri.https('us-central1-flexpozivnicazakurira.cloudfunctions.net', '/sendMail', queryParameters);
    final response = await http.get(uri);
    return response;

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppHeader(),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(40.0),
                  child: Text(
                    kHeadingMessage,
                    style: TextStyle(color: Color(0xffc0ad93), fontSize: 32),
                  ),
                ),
              ),
              MediaQuery.of(context).size.width >= 1200 ? Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SenderColumn(
                    controllerSenderNameSurname: controllerSenderNameSurname,
                    controllerSenderAddress: controllerSenderAddress,
                    controllerSenderCity: controllerSenderCity,
                    controllerSenderHomeNumber: controllerSenderHomeNumber,
                    controllerSenderPostalNumber: controllerSenderPostalNumber,
                    controllerSenderPhone: controllerSenderPhone,
                    controllerSenderContact: controllerSenderContact,
                    controllerSenderEmail: controllerSenderEmail,
                    controllerSenderNote: controllerSenderNote,
                    controllerDeliveryValue: controllerDeliveryValue,
                    controllerDeliveryBuyOut: controllerDeliveryBuyOut,
                  ),
                  SizedBox(width: 83),
                  ReceiverColumn(
                      controllerReceiverNameSurname: controllerReceiverNameSurname,
                      controllerReceiverCity: controllerReceiverCity,
                      controllerReceiverAddress: controllerReceiverAddress,
                      controllerReceiverPostalNumber: controllerReceiverPostalNumber,
                      controllerReceiverHomeNumber: controllerReceiverHomeNumber,
                      controllerReceiverContact: controllerReceiverContact,
                      controllerReceiverNote: controllerReceiverNote,
                      controllerReceiverPhone: controllerReceiverPhone,
                      controllerDeliveryValue: controllerDeliveryValue,
                      controllerDeliveryBuyOut: controllerDeliveryBuyOut,
                  ),
                  SizedBox(width: 83),
                  DeliveryDetails(
                    controllerDeliveryContent: controllerDeliveryContent,
                    controllerDeliveryBuyOut: controllerDeliveryBuyOut,
                    controllerDeliveryValue: controllerDeliveryValue,
                    controllerNumber: controllerNumber,
                    controllerBankAccountNumber: controllerBankAccountNumber
                  ),
                ],
              ) :
              (MediaQuery.of(context).size.width < 1200 && MediaQuery.of(context).size.width > 800 ) ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SenderColumn(
                        controllerSenderNameSurname: controllerSenderNameSurname,
                        controllerSenderAddress: controllerSenderAddress,
                        controllerSenderCity: controllerSenderCity,
                        controllerSenderHomeNumber: controllerSenderHomeNumber,
                        controllerSenderPostalNumber: controllerSenderPostalNumber,
                        controllerSenderPhone: controllerSenderPhone,
                        controllerSenderContact: controllerSenderContact,
                        controllerSenderEmail: controllerSenderEmail,
                        controllerSenderNote: controllerSenderNote,
                        controllerDeliveryValue: controllerDeliveryValue,
                        controllerDeliveryBuyOut: controllerDeliveryBuyOut,
                      ),
                      SizedBox(width: 83),
                      ReceiverColumn(
                        controllerReceiverNameSurname: controllerReceiverNameSurname,
                        controllerReceiverCity: controllerReceiverCity,
                        controllerReceiverAddress: controllerReceiverAddress,
                        controllerReceiverPostalNumber: controllerReceiverPostalNumber,
                        controllerReceiverHomeNumber: controllerReceiverHomeNumber,
                        controllerReceiverContact: controllerReceiverContact,
                        controllerReceiverNote: controllerReceiverNote,
                        controllerReceiverPhone: controllerReceiverPhone,
                        controllerDeliveryValue: controllerDeliveryValue,
                        controllerDeliveryBuyOut: controllerDeliveryBuyOut,
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  DeliveryDetails(
                      controllerDeliveryContent: controllerDeliveryContent,
                      controllerDeliveryBuyOut: controllerDeliveryBuyOut,
                      controllerDeliveryValue: controllerDeliveryValue,
                      controllerNumber: controllerNumber,
                      controllerBankAccountNumber: controllerBankAccountNumber
                  ),
                ],
              ) :
              MediaQuery.of(context).size.width <=800 ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SenderColumn(
                    controllerSenderNameSurname: controllerSenderNameSurname,
                    controllerSenderAddress: controllerSenderAddress,
                    controllerSenderCity: controllerSenderCity,
                    controllerSenderHomeNumber: controllerSenderHomeNumber,
                    controllerSenderPostalNumber: controllerSenderPostalNumber,
                    controllerSenderPhone: controllerSenderPhone,
                    controllerSenderContact: controllerSenderContact,
                    controllerSenderEmail: controllerSenderEmail,
                    controllerSenderNote: controllerSenderNote,
                    controllerDeliveryValue: controllerDeliveryValue,
                    controllerDeliveryBuyOut: controllerDeliveryBuyOut,
                  ),
                  SizedBox(height: 40),
                  ReceiverColumn(
                    controllerReceiverNameSurname: controllerReceiverNameSurname,
                    controllerReceiverCity: controllerReceiverCity,
                    controllerReceiverAddress: controllerReceiverAddress,
                    controllerReceiverPostalNumber: controllerReceiverPostalNumber,
                    controllerReceiverHomeNumber: controllerReceiverHomeNumber,
                    controllerReceiverContact: controllerReceiverContact,
                    controllerReceiverNote: controllerReceiverNote,
                    controllerReceiverPhone: controllerReceiverPhone,
                    controllerDeliveryValue: controllerDeliveryValue,
                    controllerDeliveryBuyOut: controllerDeliveryBuyOut,
                  ),
                  SizedBox(height: 40),
                  DeliveryDetails(
                      controllerDeliveryContent: controllerDeliveryContent,
                      controllerDeliveryBuyOut: controllerDeliveryBuyOut,
                      controllerDeliveryValue: controllerDeliveryValue,
                      controllerNumber: controllerNumber,
                      controllerBankAccountNumber: controllerBankAccountNumber
                  ),
                ],
              ) : Container(),
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MediaQuery.of(context).size.width >1200 ? MainAxisAlignment.end : MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      child: Padding(
                        padding: MediaQuery.of(context).size.width >= 1200 ? EdgeInsets.only(top: 40, left: 20, right: 350) : EdgeInsets.only(top: 40, left: 20, right: 20),
                        child: Container(
                          color: Colors.red,
                          width: MediaQuery.of(context).size.width > 420 ? 383 : 250,
                          height: 50,
                          child: Center(
                            child: Text(
                              kConfirmButton,
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      onTap: (){
                        if(controllerReceiverNameSurname.text.isEmpty || controllerSenderNameSurname.text.isEmpty || controllerReceiverCity.text.isEmpty || controllerSenderCity.text.isEmpty || controllerReceiverAddress.text.isEmpty || controllerSenderAddress.text.isEmpty || controllerReceiverPhone.text.isEmpty || controllerSenderPhone.text.isEmpty || startingValueWeight.isEmpty || startingValuePayment.isEmpty) {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text("GREŠKA"),
                              content: Text("Niste popunili sva obavezna polja"),
                              actions: [
                                TextButton(
                                  child: Text("OK"),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            ),
                          );
                        } else {
                          setState(() {
                            Provider.of<OverallPrice>(context, listen: false);
                            isClicked = true;
                            if(controllerDeliveryValue.text.length == 10) {
                              cutDeliveryValue = controllerDeliveryValue.text.substring(0, 3);
                              }
                            if(controllerDeliveryValue.text.length == 11) {
                            cutDeliveryValue = controllerDeliveryValue.text.substring(0, 4);
                              }
                            if(controllerDeliveryBuyOut.text.length == 10) {
                            cutBuyOut = controllerDeliveryBuyOut.text.substring(0, 3);
                              }
                            if(controllerDeliveryBuyOut.text.length == 11) {
                            cutBuyOut = controllerDeliveryBuyOut.text.substring(0, 4);
                              }
                            (startingValueWeight == "0kg - 0.5kg" && startingValueDelivery == 'Danas za danas') ? context.read<OverallPrice>().add(600):
                            (startingValueWeight == "0.5kg - 1kg" && startingValueDelivery == 'Danas za danas') ? context.read<OverallPrice>().add(620):
                            (startingValueWeight == "1kg - 2kg" && startingValueDelivery == 'Danas za danas') ? context.read<OverallPrice>().add(640):
                            (startingValueWeight == "2kg - 5kg" && startingValueDelivery == 'Danas za danas') ? context.read<OverallPrice>().add(780):
                            (startingValueWeight == "5kg - 10kg" && startingValueDelivery == 'Danas za danas') ? context.read<OverallPrice>().add(900):
                            (startingValueWeight == "10kg - 15kg" && startingValueDelivery == 'Danas za danas') ? context.read<OverallPrice>().add(930):
                            (startingValueWeight == "15kg - 20kg" && startingValueDelivery == 'Danas za danas') ? context.read<OverallPrice>().add(950):
                            (startingValueWeight == "20kg - 30kg" && startingValueDelivery == 'Danas za danas') ? context.read<OverallPrice>().add(1070):
                            (startingValueWeight == "30kg - 50kg" && startingValueDelivery == 'Danas za danas') ? context.read<OverallPrice>().add(1220):
                            (startingValueWeight == "0kg - 0.5kg" && startingValueDelivery == 'Danas za sutra do 18h') ? context.read<OverallPrice>().add(350):
                            (startingValueWeight == "0.5kg - 1kg" && startingValueDelivery == 'Danas za sutra do 18h') ? context.read<OverallPrice>().add(410):
                            (startingValueWeight == "1kg - 2kg" && startingValueDelivery == 'Danas za sutra do 18h') ? context.read<OverallPrice>().add(450):
                            (startingValueWeight == "2kg - 5kg" && startingValueDelivery == 'Danas za sutra do 18h') ? context.read<OverallPrice>().add(580):
                            (startingValueWeight == "5kg - 10kg" && startingValueDelivery == 'Danas za sutra do 18h') ? context.read<OverallPrice>().add(740):
                            (startingValueWeight == "10kg - 15kg" && startingValueDelivery == 'Danas za sutra do 18h') ? context.read<OverallPrice>().add(970):
                            (startingValueWeight == "15kg - 20kg" && startingValueDelivery == 'Danas za sutra do 18h') ? context.read<OverallPrice>().add(1020):
                            (startingValueWeight == "20kg - 30kg" && startingValueDelivery == 'Danas za sutra do 18h') ? context.read<OverallPrice>().add(1210):
                            (startingValueWeight == "30kg - 50kg" && startingValueDelivery == 'Danas za sutra do 18h') ? context.read<OverallPrice>().add(1560):
                            (startingValueWeight == "Bicikl" ) ? context.read<OverallPrice>().add(1660):
                            (startingValueWeight == "Televizor do 55 incha" ) ? context.read<OverallPrice>().add(870):
                            (startingValueWeight == "Guma putnička" ) ? context.read<OverallPrice>().add(400):
                            (startingValueWeight == "Guma poluteretna" ) ? context.read<OverallPrice>().add(770):
                            (startingValueWeight == "Guma teretna" ) ? context.read<OverallPrice>().add(1590):
                            (startingValueWeight == "Guma putnička sa felnom" ) ? context.read<OverallPrice>().add(510):
                            (startingValueWeight == "Guma poluteretna sa felnom" ) ? context.read<OverallPrice>().add(1040):
                            (startingValueWeight == "Guma teretna sa felnom" ) ? context.read<OverallPrice>().add(1820):
                            (startingValueWeight == "Traktorska guma" ) ? context.read<OverallPrice>().add(1340):
                            (startingValueWeight == "Traktorska guma sa felnom" ) ? context.read<OverallPrice>().add(1760):
                            (startingValueWeight == "Menjač manji" ) ? context.read<OverallPrice>().add(1550):
                            (startingValueWeight == "Menjač automatski" ) ? context.read<OverallPrice>().add(5040):
                            (startingValueWeight == "Auto motor" ) ? context.read<OverallPrice>().add(5070): null;
                            if((selected.contains("Potvrda o uručenju"))){
                              context.read<OverallPrice>().add(120);
                            }
                            if((selected.contains("Lično"))){
                              context.read<OverallPrice>().add(120);
                            }
                            if((selected.contains("Potpisana povratna dokumentacija"))){
                              context.read<OverallPrice>().add(120);
                            }
                            if((selected.contains("Plaćeni odgovor"))){
                              context.read<OverallPrice>().add(200);
                            }
                            if((selected.contains("SMS"))){
                              context.read<OverallPrice>().add(15);
                            }
                            context.read<OverallPrice>().add(int.parse(cutDeliveryValue));
                            context.read<OverallPrice>().add(int.parse(cutBuyOut));
                          });
                          sendEmail();
                        }
                      },
                    ),
                  ],
                ),
              ),
              isClicked ? Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 30.0, right: 40),
                    child: Text(konClickMessage, style: TextStyle(color: Colors.black, fontSize: 28),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: Text(konClickTermsMessage, style: TextStyle(color: Colors.black, fontSize: 14),),
                  ),
                ],
              ) : Container(),
              MiddleContainer(),
              CallCenterContainer(),
              CustomAppFooter(),
            ],
          ),
        ),
      ),
    );
  }
}


