import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/payment_card/ui/widgets/form_payment_widget.dart';
import '../../controller/payment_controller.dart';
import 'card_payment_widget.dart';

class OnlineBodyPayment extends GetView<PaymentController> {
  const OnlineBodyPayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      children: const [
        CardPaymentWidget(),
        SizedBox(height: 20),
        FormPaymentWidget(),
      ],
    );
  }
}
