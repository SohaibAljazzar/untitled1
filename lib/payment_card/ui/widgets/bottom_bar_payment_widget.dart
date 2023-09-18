import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/payment_controller.dart';

class BottomBarPaymentScreen extends GetView<PaymentController> {
  const BottomBarPaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () => {
                Get.back(
                  result: true,
                )
              },
              child: const Text('back'),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: ElevatedButton(
              onPressed: () => {
                AwesomeDialog(
                  context: context,
                  dialogType: DialogType.info,
                  borderSide: const BorderSide(
                    color: Colors.green,
                    width: 2,
                  ),
                  width: 280,
                  buttonsBorderRadius: const BorderRadius.all(
                    Radius.circular(2),
                  ),
                  title: 'sure',
                  btnCancelOnPress: () {},
                  btnOkOnPress: () {
                    Get.toNamed(
                      '/success_screen',
                    );
                  },
                ).show()
              },
              child: const Text('Pay'),
            ),
          ),
        ],
      ),
    );
  }
}
