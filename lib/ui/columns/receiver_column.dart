
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../labels.dart';
import '../widgets/custom_input_text_field.dart';
import '../widgets/top_container.dart';

class ReceiverColumn extends StatelessWidget {
  ReceiverColumn(
  {
    required this.controllerReceiverNameSurname,
    required this.controllerReceiverCity,
    required this.controllerReceiverAddress,
    required this.controllerReceiverHomeNumber,
    required this.controllerReceiverPostalNumber,
    required this.controllerReceiverPhone,
    required this.controllerReceiverContact,
    required this.controllerReceiverNote,
    required this.controllerDeliveryBuyOut,
    required this.controllerDeliveryValue,

}
) : super();

TextEditingController controllerReceiverNameSurname;
TextEditingController controllerReceiverCity;
TextEditingController controllerReceiverAddress;
TextEditingController controllerReceiverHomeNumber;
TextEditingController controllerReceiverPostalNumber;
TextEditingController controllerReceiverPhone;
TextEditingController controllerReceiverContact;
TextEditingController controllerReceiverNote;
TextEditingController controllerDeliveryBuyOut;
TextEditingController controllerDeliveryValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TopContainer(
          label: kReceiverData,
        ),
        CustomInputTextField(
            controllerReceiverNameSurname: controllerReceiverNameSurname,
            isRequired: true,
            isForSenderColumn: false,
            label: kNameSurname,
            controllerDeliveryValue: controllerDeliveryValue,
            controllerDeliveryBuyOut: controllerDeliveryBuyOut,
        ),
        CustomInputTextField(
          controllerReceiverCity: controllerReceiverCity,
          isRequired: true,
          isForSenderColumn: false,
          label: kCity,
          controllerDeliveryValue: controllerDeliveryValue,
          controllerDeliveryBuyOut: controllerDeliveryBuyOut,
        ),
        CustomInputTextField(
          controllerReceiverAddress: controllerReceiverAddress,
          isRequired: true,
          isForSenderColumn: false,
          label: kAddress,
          controllerDeliveryValue: controllerDeliveryValue,
          controllerDeliveryBuyOut: controllerDeliveryBuyOut,
        ),
        CustomInputTextField(
          controllerReceiverHomeNumber: controllerReceiverHomeNumber,
          isForPhone: true,
          isForSenderColumn: false,
          label: kHomeNumber,
          controllerDeliveryValue: controllerDeliveryValue,
          controllerDeliveryBuyOut: controllerDeliveryBuyOut,
        ),
        CustomInputTextField(
          controllerReceiverPostalNumber: controllerReceiverPostalNumber,
          isForPhone: true,
          isForSenderColumn: false,
          label: kPostalNumber,
          controllerDeliveryValue: controllerDeliveryValue,
          controllerDeliveryBuyOut: controllerDeliveryBuyOut,
        ),
        CustomInputTextField(
          isForPhone: true,
          isForSenderColumn: false,
          controllerReceiverPhone: controllerReceiverPhone,
          isRequired: true,
          label: kPhone,
          controllerDeliveryValue: controllerDeliveryValue,
          controllerDeliveryBuyOut: controllerDeliveryBuyOut,
        ),
        CustomInputTextField(
          controllerReceiverContact: controllerReceiverContact,
          label: kContact,
          isForSenderColumn: false,
          controllerDeliveryValue: controllerDeliveryValue,
          controllerDeliveryBuyOut: controllerDeliveryBuyOut,
        ),
        CustomInputTextField(
          controllerReceiverNote: controllerReceiverNote,
          isForNotes: true,
          isForSenderColumn: false,
          label: kNote,
          controllerDeliveryValue: controllerDeliveryValue,
          controllerDeliveryBuyOut: controllerDeliveryBuyOut,
        ),
      ],
    );
  }
}
