import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tip_calculator_app/const.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: lightGrayishCyan,
        body: _HomePage(),
      ),
    );
  }
}

class _HomePage extends StatelessWidget {
  _HomePage({Key? key}) : super(key: key);

  final TextEditingController billValue = TextEditingController();

  @override
  Widget build(BuildContext context) {
    billValue.text = '123';
    const Radius containerRadius = Radius.circular(20);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 50),
          alignment: Alignment.center,
          child: SvgPicture.asset('assets/images/logo.svg'),
        ),
        Container(
          width: double.infinity,
          height: 400,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: containerRadius, topRight: containerRadius),
              color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bill',
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
                      prefixIconConstraints: const BoxConstraints(
                          maxHeight: 20,
                          maxWidth: 20,
                          minHeight: 20,
                          minWidth: 20),
                      prefixIcon: SvgPicture.asset(
                        'assets/images/icon-dollar.svg',
                        height: 8,
                        width: 8,
                      ),
                      border:
                          const OutlineInputBorder(borderSide: BorderSide.none),
                      fillColor: whitishCyan,
                      filled: true,
                      // hintText: '123',
                    ),
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontSize: 22,
                          color: veryDarkCyan,
                        ),
                    controller: billValue,
                    textAlign: TextAlign.right,
                    keyboardType: TextInputType.number,
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
