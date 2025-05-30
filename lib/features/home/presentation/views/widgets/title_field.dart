import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';
import 'custom_text_field.dart';

class TitleField extends StatelessWidget {
  const TitleField({super.key, required this.titleController});

  final TextEditingController titleController;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      hintText: S.of(context).title,
      color: const Color.fromARGB(255, 196, 103, 212),
      hintStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: const Color.fromARGB(255, 203, 202, 202),
      ),
      controller: titleController,
      textLabelStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    );
  }
}
