import 'package:flutter/material.dart';
import 'package:tip_calculator_app/const.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        color: veryDarkCyan,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.only(top: 20, left: 30, right: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  'Tip Amount',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: Colors.white, fontSize: 16),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  '/ Person',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: lightGrayishCyan, fontSize: 14),
                )
              ]),
              Text(
                '\$4.546',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 26, color: strongCyan),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  'Total',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: Colors.white, fontSize: 16),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  '/ Person',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: lightGrayishCyan, fontSize: 14),
                )
              ]),
              Text(
                '\$50.80',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 26, color: strongCyan),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {
              //TODO:reset the controller values to zero
            },
            child: Text(
              'Reset',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(color: veryDarkCyan, fontSize: 20),
            ),
            style: ButtonStyle(
              minimumSize:
                  MaterialStateProperty.all(const Size(double.infinity, 10)),
              backgroundColor: MaterialStateProperty.all(strongCyan),
            ),
          )
        ],
      ),
    );
  }
}
