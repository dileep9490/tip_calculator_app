import 'package:flutter/material.dart';
import 'package:tip_calculator_app/const.dart';

class PercentageButton extends StatelessWidget {
  const PercentageButton({
    Key? key,
    required this.title,
    required this.change,
    required this.id,
  }) : super(key: key);
  final Function change;
  final String title;
  final int id;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
        onPressed: () {
          change(int.parse(title));
        },
        child: Text(
          '$title%',
          style: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(color: Colors.white, fontSize: 25),
        ),
        style: ButtonStyle(
          backgroundColor: id == int.parse(title)
              ? MaterialStateProperty.all(strongCyan)
              : MaterialStateProperty.all(veryDarkCyan),
        ),
      ),
    );
  }
}
