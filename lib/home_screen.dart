import 'package:flutter/material.dart';
import 'package:untitled1/stripe_payment/payment_manager.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              PaymentManager.makePayment(100, "USD");
            },
            child: const Text("Pay 100\$"),
          ),
        ),
      ),
    );
  }
}