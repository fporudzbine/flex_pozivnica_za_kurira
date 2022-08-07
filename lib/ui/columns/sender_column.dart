
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../labels.dart';
import '../widgets/custom_input_text_field.dart';
import '../widgets/top_container.dart';

class SenderColumn extends StatelessWidget {
  SenderColumn(
      {
        required this.controllerSenderNameSurname,
        required this.controllerSenderCity,
        required this.controllerSenderAddress,
        required this.controllerSenderHomeNumber,
        required this.controllerSenderPostalNumber,
        required this.controllerSenderPhone,
        required this.controllerSenderContact,
        required this.controllerSenderEmail,
        required this.controllerSenderNote,
        required this.controllerDeliveryBuyOut,
        required this.controllerDeliveryValue,

  }
  ) : super();

  TextEditingController controllerSenderNameSurname;
  TextEditingController controllerSenderCity;
  TextEditingController controllerSenderAddress;
  TextEditingController controllerSenderHomeNumber;
  TextEditingController controllerSenderPostalNumber;
  TextEditingController controllerSenderPhone;
  TextEditingController controllerSenderContact;
  TextEditingController controllerSenderEmail;
  TextEditingController controllerSenderNote;
  TextEditingController controllerDeliveryBuyOut;
  TextEditingController controllerDeliveryValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: MediaQuery.of(context).size.width > 1200 ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        TopContainer(
          label: kSenderData,
        ),
        CustomInputTextField(
            controllerSenderNameSurname: controllerSenderNameSurname,
            isRequired: true,
            isForSenderColumn: true,
            label: kNameSurname,
            controllerDeliveryValue: controllerDeliveryValue,
            controllerDeliveryBuyOut: controllerDeliveryBuyOut,
        ),
        CustomInputTextField(
          controllerSenderCity: controllerSenderCity,
          isRequired: true,
          isForSenderColumn: true,
          label: kCity,
          controllerDeliveryValue: controllerDeliveryValue,
          controllerDeliveryBuyOut: controllerDeliveryBuyOut,
        ),
        CustomInputTextField(
          controllerSenderAddress: controllerSenderAddress,
          isRequired: true,
          isForSenderColumn: true,
          label: kAddress,
          controllerDeliveryValue: controllerDeliveryValue,
          controllerDeliveryBuyOut: controllerDeliveryBuyOut,
        ),
        CustomInputTextField(
          controllerSenderHomeNumber: controllerSenderHomeNumber,
          label: kHomeNumber,
          isForPhone: true,
          isForSenderColumn: true,
          controllerDeliveryValue: controllerDeliveryValue,
          controllerDeliveryBuyOut: controllerDeliveryBuyOut,
        ),
        CustomInputTextField(
          controllerSenderPostalNumber: controllerSenderPostalNumber,
          isForPhone: true,
          isForSenderColumn: true,
          label: kPostalNumber,
          controllerDeliveryValue: controllerDeliveryValue,
          controllerDeliveryBuyOut: controllerDeliveryBuyOut,
        ),
        CustomInputTextField(
          controllerSenderPhone: controllerSenderPhone,
          isRequired: true,
          isForSenderColumn: true,
          isForPhone: true,
          label: kPhone,
          controllerDeliveryValue: controllerDeliveryValue,
          controllerDeliveryBuyOut: controllerDeliveryBuyOut,
        ),
        CustomInputTextField(
          controllerSenderContact: controllerSenderContact,
          label: kContact,
          isForSenderColumn: true,
          controllerDeliveryValue: controllerDeliveryValue,
          controllerDeliveryBuyOut: controllerDeliveryBuyOut,
        ),
        CustomInputTextField(
          controllerSenderEmail: controllerSenderEmail,
          label: kEmail,
          controllerDeliveryValue: controllerDeliveryValue,
          controllerDeliveryBuyOut: controllerDeliveryBuyOut,
        ),
        CustomInputTextField(
          controllerSenderNote: controllerSenderNote,
          isForNotes: true,
          isForSenderColumn: true,
          label: kNote,
          controllerDeliveryValue: controllerDeliveryValue,
          controllerDeliveryBuyOut: controllerDeliveryBuyOut,
        ),
      ],
    );
  }
}
