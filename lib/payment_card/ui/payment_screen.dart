import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/payment_card/controller/payment_controller.dart';
import 'package:untitled1/payment_card/ui/widgets/bottom_bar_payment_widget.dart';
import 'package:untitled1/payment_card/ui/widgets/online_body_payment.dart';

class PaymentScreen extends GetResponsiveView<PaymentController> {
  PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const BottomBarPaymentScreen(),
        appBar: AppBar(
          title: const Text('Pay'),
        ),
        body: const OnlineBodyPayment(),
      ),
    );
  }
}
