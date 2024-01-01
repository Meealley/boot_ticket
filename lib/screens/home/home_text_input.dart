import 'package:boot_tickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class HomeTextInput extends StatelessWidget {
  final String hint;

  const HomeTextInput({
    super.key,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    final OutlineInputBorder border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: primary,
      ),
    );

    return SizedBox(
      height: 40,
      width: double.infinity,
      child: TextField(
        cursorColor: primary,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 5),
          hintText: hint,
          hintStyle: Styles.headlineStyle3,
          prefixIcon: const Icon(
            FontAwesome.search,
            size: 20,
          ),
          prefixIconColor: Styles.textColor,
          border: border,
          enabledBorder: border,
          focusedBorder: border,
        ),
      ),
    );
  }
}
