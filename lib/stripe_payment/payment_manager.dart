import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:untitled1/stripe_payment/stripe_keys.dart';

class PaymentManager {
  Future<void> makePayment(int amount, String currency) async {
    try {
      String? clientSecret =
          await _getClientSecret((amount * 100).toString(), currency);
      await _initializePaymentSheet(clientSecret);
      // await Get.to(
      //   CustomCardPaymentScreen(),
      //   arguments: {},
      // );
    } catch (error) {
      throw Exception(error.toString());
    }
  }

  Future<void> _initializePaymentSheet(String clientSecret) async {
    log('message');
    try {
      await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
          paymentIntentClientSecret: clientSecret,
          merchantDisplayName: "sada",
        ),
      );
    } catch (e) {
      log(e.toString());
    }
  }

  Future<String> _getClientSecret(String amount, String currency) async {
    Dio dio = Dio();
    var response = await dio.post(
      'https://api.stripe.com/v1/payment_intents',
      options: Options(
        headers: {
          'Authorization': 'Bearer ${ApiKeys.secretKey}',
          'Content-Type': 'application/x-www-form-urlencoded'
        },
      ),
      data: {
        'amount': amount,
        'currency': currency,
      },
    );
    return response.data["client_secret"];
  }
}
