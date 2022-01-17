import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:sneaker/utils/constant.dart';

class CustomTextFormField extends StatefulWidget {
  final String hintText;
  final TypeInput typeInput;
  final List<TextInputFormatter>? listInputsFormater;
  final List<FieldValidator<dynamic>> listsValidator;
  const CustomTextFormField(
      {Key? key,
      required this.hintText,
      this.typeInput = TypeInput.text,
      this.listInputsFormater,
      required this.listsValidator})
      : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool hidden = true;
  Widget showIcon() {
    return GestureDetector(
      onTap: () {
        setState(() {
          hidden = !hidden;
        });
      },
      child: Icon(
        hidden ? FontAwesomeIcons.eyeSlash : FontAwesomeIcons.eye,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 54,
      child: TextFormField(
        validator: MultiValidator(widget.listsValidator),
        inputFormatters: widget.listInputsFormater,
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xffF4F4F4),
          hintText: widget.hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          hintStyle: const TextStyle(
            fontFamily: 'Futura',
            letterSpacing: 0.5,
          ),
          suffixIcon: widget.typeInput == TypeInput.mdp ? showIcon() : null,
          isDense: true,
        ),
        obscureText: widget.typeInput == TypeInput.mdp ? hidden : false,
      ),
    );
  }
}
