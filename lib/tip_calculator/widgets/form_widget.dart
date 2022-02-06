import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../const.dart';

class FormWidget extends StatelessWidget {
  const FormWidget(
      {Key? key,
      required this.controller,
      required this.prefixIconPath,
      required this.title})
      : super(key: key);
  final String prefixIconPath;
  final TextEditingController controller;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(fontSize: 18, color: darkGrayishCyan),
        ),
        const SizedBox(
          height: 20,
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: '0',
            constraints: const BoxConstraints(maxHeight: 56),
            prefixIconConstraints: const BoxConstraints(
                maxHeight: 20, maxWidth: 20, minHeight: 20, minWidth: 20),
            prefixIcon: SvgPicture.asset(
              prefixIconPath,
              height: 8,
              width: 8,
            ),
            border: const OutlineInputBorder(borderSide: BorderSide.none),
            fillColor: whitishCyan,
            filled: true,
          ),
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontSize: 25,
                color: veryDarkCyan,
              ),
          controller: controller,
          textAlign: TextAlign.right,
          keyboardType: TextInputType.number,
          onChanged: (value) {
            //TODO:implement this
          },
        ),
      ],
    );
  }
}
