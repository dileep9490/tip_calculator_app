import 'package:flutter/material.dart';

import '../../const.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.customController})
      : super(key: key);

  final TextEditingController customController;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        constraints: BoxConstraints(maxHeight: 56),
        hintText: 'Custom',
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
      controller: customController,
      onChanged: (value) {
        //TODO:takes custom percentage and need to implement it
      },
    );
  }
}
