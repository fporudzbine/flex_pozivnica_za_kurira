import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../labels.dart';

class CustomInputTextField extends StatefulWidget {
  CustomInputTextField(
      {
        required this.label,
        this.controllerSenderNameSurname,
        this.controllerSenderCity,
        this.controllerSenderAddress,
        this.controllerSenderPhone,
        this.controllerSenderHomeNumber,
        this.controllerSenderPostalNumber,
        this.controllerSenderContact,
        this.controllerSenderEmail,
        this.controllerSenderNote,
        this.controllerReceiverNameSurname,
        this.controllerReceiverCity,
        this.controllerReceiverAddress,
        this.controllerReceiverPhone,
        this.controllerReceiverHomeNumber,
        this.controllerReceiverPostalNumber,
        this.controllerReceiverContact,
        this.controllerReceiverNote,
        this.controllerDeliveryContent,
        this.controllerBankAccountNumber,
        required this.controllerDeliveryBuyOut,
        required this.controllerDeliveryValue,
        this.isForNotes = false,
        this.counter, this.isRequired = false,
        this.isForBuyOut = false,
        this.isForPhone = false,
        this.isForSenderColumn = false,
        this.isForAccountNumber = false,
  }
  );
  TextEditingController? controllerSenderNameSurname;
  TextEditingController? controllerSenderCity;
  TextEditingController? controllerSenderAddress;
  TextEditingController? controllerSenderHomeNumber;
  TextEditingController? controllerSenderPostalNumber;
  TextEditingController? controllerSenderPhone;
  TextEditingController? controllerSenderContact;
  TextEditingController? controllerSenderEmail;
  TextEditingController? controllerSenderNote;
  TextEditingController? controllerReceiverNameSurname;
  TextEditingController? controllerReceiverCity;
  TextEditingController? controllerReceiverAddress;
  TextEditingController? controllerReceiverHomeNumber;
  TextEditingController? controllerReceiverPostalNumber;
  TextEditingController? controllerReceiverPhone;
  TextEditingController? controllerReceiverContact;
  TextEditingController? controllerReceiverNote;
  TextEditingController? controllerDeliveryContent;
  TextEditingController controllerDeliveryBuyOut;
  TextEditingController controllerDeliveryValue;
  TextEditingController? controllerBankAccountNumber;
  final String label;
  final bool isForNotes;
  final Widget? counter;
  final bool isRequired;
  final bool isForBuyOut;
  final bool isForPhone;
  final bool isForSenderColumn;
  final bool isForAccountNumber;

  @override
  State<CustomInputTextField> createState() => _CustomInputTextFieldState();
}

class _CustomInputTextFieldState extends State<CustomInputTextField> {

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
                Text(kRequired, style: TextStyle(color: Colors.red, fontSize: 12),)
              ],
            ) : Container(
                width: 250,
                child: Text(widget.label, style: TextStyle(color: Colors.black, fontSize: 12), maxLines: 2)),
          ),
          SizedBox(height: 5),
          Container(
            color: Color(0xfff4f4f4),
            width: 260,
            height: 45,
            child: Focus(
              onFocusChange: (hasFocus){
                if(!hasFocus && widget.label == kValue){
                  widget.controllerDeliveryValue.text.contains(".00 RSD") ? widget.controllerDeliveryValue.text = widget.controllerDeliveryValue.text : widget.controllerDeliveryValue.text = "${widget.controllerDeliveryValue.text}.00 RSD";
                }
                if (!hasFocus && widget.label == kBuyOut){
                  widget.controllerDeliveryBuyOut.text.contains(".00 RSD") ? widget.controllerDeliveryBuyOut.text = widget.controllerDeliveryBuyOut.text : widget.controllerDeliveryBuyOut.text = "${widget.controllerDeliveryBuyOut.text}.00 RSD";
                }
              },
              child: TextField(
                controller: (widget.label == kNameSurname && widget.isForSenderColumn == true) ? widget.controllerSenderNameSurname
                :
                (widget.label == kNameSurname && widget.isForSenderColumn == false) ? widget.controllerReceiverNameSurname
                :
                (widget.label == kCity && widget.isForSenderColumn == true) ? widget.controllerSenderCity
                :
                (widget.label == kCity && widget.isForSenderColumn == false) ? widget.controllerReceiverCity
                :
                (widget.label == kAddress && widget.isForSenderColumn == true) ? widget.controllerSenderAddress
                :
                (widget.label == kAddress && widget.isForSenderColumn == false) ? widget.controllerReceiverAddress
                :
                (widget.label == kHomeNumber && widget.isForSenderColumn == true) ? widget.controllerSenderHomeNumber
                :
                (widget.label == kHomeNumber && widget.isForSenderColumn == false) ? widget.controllerReceiverHomeNumber
                :
                (widget.label == kPostalNumber && widget.isForSenderColumn == true) ? widget.controllerSenderPostalNumber
                :
                (widget.label == kPostalNumber && widget.isForSenderColumn == false) ? widget.controllerReceiverPostalNumber
                :
                (widget.label == kPhone && widget.isForSenderColumn == true) ? widget.controllerSenderPhone
                :
                (widget.label == kPhone && widget.isForSenderColumn == false) ? widget.controllerReceiverPhone
                :
                (widget.label == kContact && widget.isForSenderColumn == true) ? widget.controllerSenderContact
                :
                (widget.label == kContact && widget.isForSenderColumn == false) ? widget.controllerReceiverContact
                :
                (widget.label == kEmail) ? widget.controllerSenderEmail
                :
                (widget.label == kNote && widget.isForSenderColumn == true) ? widget.controllerSenderNote
                :
                (widget.label == kNote && widget.isForSenderColumn == false) ? widget.controllerReceiverNote
                :
                widget.label == kContent ? widget.controllerDeliveryContent
                :
                widget.label == kBuyOut ? widget.controllerDeliveryBuyOut
                :
                widget.label == kValue ? widget.controllerDeliveryValue
                :
                null,
                keyboardType: widget.isForBuyOut ? TextInputType.numberWithOptions(decimal: true, signed: false) : TextInputType.text,
                inputFormatters: widget.isForBuyOut ?
                [
                  FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
                ]
                    : widget.isForPhone ?
                [
                  FilteringTextInputFormatter.digitsOnly,
                ]   : widget.isForAccountNumber ?
                [
                  FilteringTextInputFormatter.digitsOnly,
                ]   :
                List.empty(),
                style: TextStyle(color: Colors.black),
                cursorColor: Colors.black,
                obscureText: false,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(borderSide: BorderSide.none),
                  contentPadding: EdgeInsets.only(left: 10),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red),),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

