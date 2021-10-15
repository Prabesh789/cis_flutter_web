import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({
    Key? key,
    this.controller,
    this.isEnabled = false,
    this.labelText,
    this.hintText,
    this.prefixIcon,
    this.suffixixIcon,
    this.keyboard,
    this.obscureText = false,
    this.validator,
    this.focusNode,
    this.onEditingComplete,
  }) : super(key: key);
  final TextEditingController? controller;
  final bool isEnabled;
  final String? labelText;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixixIcon;
  final TextInputType? keyboard;
  final bool obscureText;
  final String? Function(String?)? validator;
  final FocusNode? focusNode;
  final VoidCallback? onEditingComplete;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onEditingComplete: onEditingComplete,
      focusNode: focusNode,
      validator: validator,
      obscureText: obscureText,
      controller: controller,
      enabled: isEnabled,
      keyboardType: keyboard,
      cursorColor: Colors.black12,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
        labelText: labelText,
        labelStyle: GoogleFonts.ptSerif(
          textStyle: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            overflow: TextOverflow.ellipsis,
            color: Colors.blueGrey[100],
          ),
        ),
        hintText: hintText,
        hintStyle: GoogleFonts.ptSerif(
          textStyle: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            overflow: TextOverflow.ellipsis,
            color: Colors.blueGrey[100],
          ),
        ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixixIcon,
      ),
    );
  }
}
