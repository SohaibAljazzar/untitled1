import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:untitled1/custom_card_payment_screen.dart';
import 'package:untitled1/home_screen.dart';
import 'package:untitled1/stripe_payment/stripe_keys.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey = ApiKeys.publishableKey;
  await Stripe.instance.applySettings();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Payment With Stripe',
      home: CustomCardPaymentScreen(),
    );
  }
}
