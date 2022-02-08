import 'package:flutter/material.dart';
import 'package:tip_calculator_app/const.dart';

class PercentageButton extends StatelessWidget {
  const PercentageButton({
    Key? key,
    required this.title,
    required this.change,
  }) : super(key: key);
  final Function change;
  final String title;

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
          backgroundColor: MaterialStateProperty.all(veryDarkCyan),
        ),
      ),
    );
  }
}
