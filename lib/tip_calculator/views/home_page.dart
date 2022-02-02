import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tip_calculator_app/const.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: lightGrayishCyan,
        body: _HomePage(),
      ),
    );
  }
}

class _HomePage extends StatelessWidget {
  const _HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          height: 400,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: containerRadius, topRight: containerRadius),
              color: Colors.white),
          child: const Center(
            child: Text("hi"),
          ),
        )
      ],
    );
  }
}
