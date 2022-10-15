import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FTextField extends StatelessWidget {
  const FTextField(
      {Key? key,
      required this.title,
      required this.controller,
      required this.selectedColor,
      this.textinputType = TextInputType.text,
      this.inputFormatters = const [],
      this.withTitle = true,
      this.editable = true,
      this.textCapitalization = TextCapitalization.none,
      this.onChanged,
      this.prefixIcon,
      this.textAlign = TextAlign.end,
      this.hintText,
      this.focusNode,
      this.onEditingComplete,
      this.onTap,
      this.onSubmitted,
      this.suffixIcon,
      this.maxLines = 1,
      this.obscureText = false,
      this.autofillHints})
      : super(key: key);
  final String title;
  final bool withTitle;
  final TextCapitalization textCapitalization;
  final TextEditingController controller;
  final Color selectedColor;
  final TextAlign textAlign;
  final VoidCallback? onTap;
  final bool editable;
  final TextInputType textinputType;
  final List<TextInputFormatter> inputFormatters;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  final IconData? prefixIcon;
  final FocusNode? focusNode;
  final String? hintText;
  final int maxLines;
  final void Function()? onEditingComplete;
  final Widget? suffixIcon;
  final bool obscureText;
  final Iterable<String>? autofillHints;

  @override
  Widget build(BuildContext context) {
    if (!withTitle) {
      return _createTextField();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: const TextStyle(overflow: TextOverflow.ellipsis)),
        _createTextField()
      ],
    );
  }

  Widget _createTextField() {
    return TextField(
      focusNode: focusNode,
      onSubmitted: onSubmitted,
      onChanged: onChanged,
      controller: controller,
      keyboardType: textinputType,
      inputFormatters: inputFormatters,
      textCapitalization: textCapitalization,
      autofillHints: autofillHints,
      enabled: editable,
      obscureText: obscureText,
      cursorColor: selectedColor,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: selectedColor),
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
        hintText: hintText ?? title,
        filled: true,
        // hintStyle: TextStyle(color: Colors.grey[800]),
        fillColor: Colors.white70,
        prefixIcon:
            prefixIcon != null ? Icon(prefixIcon, color: selectedColor) : null,
        suffixIcon: suffixIcon,
        isDense: true,
      ),
    );
  }
}
