import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  const CustomTextFormField({Key? key, required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xffF4F4F4),
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          hintStyle: const TextStyle(
            fontFamily: 'Futura',
            letterSpacing: 0.5,
          ),
        ),
      ),
    );
  }
}
