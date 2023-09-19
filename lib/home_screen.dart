import 'package:flutter/material.dart';
import 'package:untitled1/stripe_payment/payment_manager.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: ElevatedButton(
            style: ElevatedButtonTheme.of(context).style?.copyWith(
                backgroundColor: MaterialStatePropertyAll(Colors.red)),
            onPressed: () {
              PaymentManager().makePayment(100, "USD");
            },
            child: const Text("Pay 100\$",style: TextStyle(
              color: Colors.black,
            ),),
          ),
        ),
      ),
    );
  }
}
