import 'package:get/get.dart';

import '../controller/payment_controller.dart';

class PaymentBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<PaymentController>(
      () => PaymentController(),
      fenix: true,
    );
  }
}
