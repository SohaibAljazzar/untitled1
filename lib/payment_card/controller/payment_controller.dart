// ignore_for_file: deprecated_member_use

import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:get/get.dart';


class PaymentController extends GetxController {
  static PaymentController get to => Get.find();

  RxBool showBack = false.obs;
  Rx<FocusNode> focusNode = FocusNode().obs;
  RxString cardNumber = ''.obs;
  RxString cardHolderName = ''.obs;
  RxString expiryDate = ''.obs;
  RxString cvc = ''.obs;
  TextEditingController cardNumberCtrl = TextEditingController();
  TextEditingController expiryFieldCtrl = TextEditingController();
  TextEditingController holderNameCtrl = TextEditingController();
  TextEditingController cvvCtrl = TextEditingController();

  @override
  void onInit() {
    // TODO: implement onInit
    listenerFocusNode();
    super.onInit();
  }

  void listenerFocusNode() {
    focusNode.value.addListener(() {
      focusNode.value.hasFocus ? showBack.value = true : showBack.value = false;
    });
  }

  void onChangeCardHolderName(String? value) {
    if (!value.isNull) {
      cardHolderName.value = value ?? '';
    } else {
      cardHolderName.value = '';
    }
  }

  void onChangeCardNumber(String? value) {
    if (!value.isNull) {
      final newCardNumber = value!.trim();
      var newStr = '';
      const step = 4;

      for (var i = 0; i < newCardNumber.length; i += step) {
        newStr += newCardNumber.substring(
            i, math.min(i + step, newCardNumber.length));
        if (i + step < newCardNumber.length) newStr += ' ';
      }
      cardNumber.value = newStr;
    } else {
      cardNumber.value = '';
    }
  }

  void onChangeCardExpiredDate(String? value) {
    if (!value.isNull) {
      var newDateValue = value!.trim();
      final isPressingBackspace = expiryDate.value.length > newDateValue.length;
      final containsSlash = newDateValue.contains('/');

      if (newDateValue.length >= 2 && !containsSlash && !isPressingBackspace) {
        newDateValue =
            '${newDateValue.substring(0, 2)}/${newDateValue.substring(2)}';
      }
      expiryFieldCtrl.text = newDateValue;
      expiryFieldCtrl.selection =
          TextSelection.fromPosition(TextPosition(offset: newDateValue.length));
      expiryDate.value = newDateValue;
    } else {
      expiryDate.value = '';
    }
  }

  void onChangeCardCVV(String? value) {
    if (!value.isNull) {
      cvc.value = value ?? '';
    } else {
      cvc.value = '';
    }
  }
}
