import 'package:awesome_card/credit_card.dart';
import 'package:awesome_card/style/card_background.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/payment_controller.dart';

class CardPaymentWidget extends GetView<PaymentController> {
  const CardPaymentWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(PaymentController());
    return Obx(() {
      return Card(
        elevation: 8.2,
        shadowColor: Colors.black38,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        borderOnForeground: true,
        semanticContainer: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
        margin: EdgeInsets.zero,
        color: Colors.transparent,
        child: CreditCard(
          cardNumber: controller.cardNumber.value,
          cardExpiry: controller.expiryDate.value,
          cardHolderName: controller.cardHolderName.value,
          cvv: controller.cvc.value,
          bankName: '',
          showBackSide: controller.showBack.value,
          frontBackground: CardBackgrounds.black,
          backBackground: CardBackgrounds.white,
          showShadow: false,

        ),
      );
    });
  }
}
