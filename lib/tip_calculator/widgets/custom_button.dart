import 'package:flutter/material.dart';

import '../../const.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.controller,
      required this.onChange,
      required this.customSelected})
      : super(key: key);
  final Function onChange;
  final TextEditingController controller;
  final Function customSelected;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        constraints: BoxConstraints(maxHeight: 56),
        prefixIconConstraints: BoxConstraints(
            maxHeight: 20, maxWidth: 20, minHeight: 20, minWidth: 20),
        border: OutlineInputBorder(borderSide: BorderSide.none),
        fillColor: whitishCyan,
        filled: true,
      ),
      style: Theme.of(context).textTheme.bodyText1!.copyWith(
            fontSize: 22,
            color: darkGrayishCyan,
          ),
      textAlign: TextAlign.right,
      keyboardType: TextInputType.number,
      controller: controller,
      onChanged: (value) {
        onChange();
      },
      onTap: () {
        if (controller.text == 'Custom') {
          controller.clear();
          customSelected();
        }
      },
    );
  }
}
