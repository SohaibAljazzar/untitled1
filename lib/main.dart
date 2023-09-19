import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:get/get.dart';
import 'package:untitled1/home_screen.dart';
import 'package:untitled1/stripe_payment/stripe_keys.dart';

void main() async {
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
    return GetMaterialApp(
      title: 'Payment With Stripe',
      home: HomeScreen(),
      theme: ThemeData(
        // colorScheme: ColorScheme(
        //     brightness: Brightness.light,
        //     primary: Colors.red,
        //     onPrimary: Colors.red,
        //     secondary: Colors.red,
        //     onSecondary: Colors.red,
        //     error: Colors.red,
        //     onError: Colors.red,
        //     background: Colors.red,
        //     onBackground: Colors.red,
        //     surface: Colors.red,
        //     onSurface: Colors.red),
        // primaryColorLight: Colors.red,
        // primaryColorDark: Colors.red,
        // primaryColor: Colors.red,
        // inputDecorationTheme: InputDecorationTheme(
        //   border: UnderlineInputBorder(
        //     borderSide: BorderSide(
        //       color: Colors.red,
        //     ),
        //   ),
        //   enabledBorder: UnderlineInputBorder(
        //     borderSide: BorderSide(
        //       color: Colors.red,
        //     ),
        //   ),
        //   focusedBorder: UnderlineInputBorder(
        //     borderSide: BorderSide(
        //       color: Colors.red,
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
