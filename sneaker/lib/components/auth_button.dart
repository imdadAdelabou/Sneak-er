import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final Function() action;
  final Widget content;
  const AuthButton({
    Key? key,
    required this.content,
    required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: const Color(0xff2F2E41),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
        onPressed: action,
        child: content,
      ),
    );
  }
}
