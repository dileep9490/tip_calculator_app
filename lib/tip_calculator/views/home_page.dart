import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tip_calculator_app/const.dart';
import 'package:tip_calculator_app/tip_calculator/widgets/form_widget.dart';
import 'package:tip_calculator_app/tip_calculator/widgets/button_widget.dart';
import 'package:tip_calculator_app/tip_calculator/widgets/custom_button.dart';

import '../widgets/result_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: lightGrayishCyan,
        body: _HomePageView(),
      ),
    );
  }
}

class _HomePageView extends StatelessWidget {
  _HomePageView({Key? key}) : super(key: key);

  final TextEditingController billcontroller = TextEditingController();
  final TextEditingController customController = TextEditingController();
  final TextEditingController peopleController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    const Radius containerRadius = Radius.circular(20);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 50),
            alignment: Alignment.center,
            child: SvgPicture.asset('assets/images/logo.svg'),
          ),
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: containerRadius, topRight: containerRadius),
                color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FormWidget(
                      title: 'Bill',
                      controller: billcontroller,
                      prefixIconPath: 'assets/images/icon-dollar.svg',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Select Tip',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontSize: 18, color: darkGrayishCyan),
                        ),
                        Table(
                          children: [
                            const TableRow(
                              children: [
                                PercentageButton(title: '5%'),
                                PercentageButton(title: '10%')
                              ],
                            ),
                            const TableRow(
                              children: [
                                PercentageButton(title: '15%'),
                                PercentageButton(title: '25%')
                              ],
                            ),
                            TableRow(
                              children: [
                                const PercentageButton(title: '50%'),
                                CustomButton(
                                  customController: customController,
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        FormWidget(
                          title: 'Number of People',
                          controller: peopleController,
                          prefixIconPath: 'assets/images/icon-person.svg',
                        ),
                       const ResultWidget()
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
