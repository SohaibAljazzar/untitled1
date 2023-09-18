import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  late String title;
  late bool obscure;
  late TextInputType inputType;
  late IconData? iconData;

  late IconData? iconDataPref;

  late TextEditingController controller;
  late Color color;
  late void Function() onPressed;
  late ValueChanged<String> onChanged;
  late FocusNode? focusNode;
  late bool enable;

  late bool svg;
  late int maxLine;
  late int maxLength;
  late String svgUrl;

  AppTextField({
    Key? key,
    this.maxLine = 2,
    this.maxLength = 2,
    required this.title,
    this.inputType = TextInputType.text,
    this.obscure = false,
    required this.controller,
    this.color = Colors.grey,
    required this.onPressed,
    this.enable = true,
    required this.onChanged,
    this.focusNode,
    required this.iconDataPref,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: TextField(
        focusNode: focusNode,
        onChanged: onChanged,
        // maxLength: maxLength,
        maxLines: maxLine,
        obscureText: obscure,
        controller: controller,
        enabled: enable,
        style: const TextStyle(
          color: Color(0XFF90959B),
          fontFamily: 'Almarai',
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        keyboardType: inputType,
        decoration: InputDecoration(
          prefixIcon: Icon(
            iconDataPref,
            color: Colors.black,
          ),

          filled: true,
          fillColor: Colors.white,
          hintText: title,
          // hintText: title,
          hintStyle: const TextStyle(
            color: Color(0XFF90959B),
            fontFamily: 'Almarai',
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          // label: AppTextStyle(
          //   name: title,
          //   fontSize: 16,
          // ),
          alignLabelWithHint: true,
          enabledBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.grey,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          disabledBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
