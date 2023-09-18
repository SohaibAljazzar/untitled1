import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/payment_card/ui/widgets/app_text_field.dart';
import '../../controller/payment_controller.dart';

class FormPaymentWidget extends GetView<PaymentController> {
  const FormPaymentWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Card(
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
        child: ListView(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          children: [
            const SizedBox(height: 10),
            AppTextField(
              title: 'Card Holder Name',
              controller: controller.holderNameCtrl,
              onPressed: () {},
              iconDataPref: Icons.person,
              color: Colors.orange,
              inputType: TextInputType.name,
              onChanged: controller.onChangeCardHolderName,
            ),
            const SizedBox(height: 20),
            AppTextField(
              title: 'Card Number',
              controller: controller.cardNumberCtrl,
              onPressed: () {},
              maxLength: 3,
              iconDataPref: Icons.credit_card,
              color: Colors.orange,
              inputType: TextInputType.number,
              onChanged: controller.onChangeCardNumber,
            ),
            const SizedBox(height: 10),
            AppTextField(
              title: 'Card Expiry',
              controller: controller.expiryFieldCtrl,
              onPressed: () {},
              maxLength: 3,
              iconDataPref: Icons.date_range_outlined,
              color: Colors.orange,
              inputType: TextInputType.number,
              onChanged: controller.onChangeCardExpiredDate,
            ),
            const SizedBox(height: 10),
            AppTextField(
              title: 'CVV',
              controller: controller.cvvCtrl,
              onPressed: () {},
              maxLength: 3,
              iconDataPref: Icons.code,
              color: Colors.orange,
              inputType: TextInputType.number,
              onChanged: controller.onChangeCardCVV,
              focusNode: controller.focusNode.value,
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
