import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tip_calculator_app/const.dart';
import 'package:tip_calculator_app/tip_calculator/cubit/tipcalculator_cubit.dart';
import 'package:tip_calculator_app/tip_calculator/widgets/form_widget.dart';
import 'package:tip_calculator_app/tip_calculator/widgets/button_widget.dart';
import 'package:tip_calculator_app/tip_calculator/widgets/custom_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/result_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: lightGrayishCyan,
        body: BlocProvider(
          create: (context) => TipCalculatorCubit(),
          child: const _HomePageView(),
        ),
      ),
    );
  }
}

class _HomePageView extends StatefulWidget {
  const _HomePageView({Key? key}) : super(key: key);

  @override
  State<_HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<_HomePageView> {
  final TextEditingController billcontroller = TextEditingController();

  final TextEditingController customController = TextEditingController();

  final TextEditingController peopleController = TextEditingController();

  int percentage = 0;

  @override
  void initState() {
    customController.text = 'Custom';
    super.initState();
  }

  void caclulate() {
    if (billcontroller.text.isNotEmpty &&
        customController.text.isNotEmpty &&
        peopleController.text.isNotEmpty) {
      double bill = double.parse(billcontroller.text);
      int count = int.parse(peopleController.text);
      int customPercentage;
      try {
        customPercentage = int.parse(customController.text);
      } catch (e) {
        customPercentage = 0;
      }
      int _percentage = customPercentage != 0 ? customPercentage : percentage;

      context.read<TipCalculatorCubit>().calculate(bill, _percentage, count);
    }
  }

  void reset() {
    billcontroller.text = '0';
    customController.text = 'Custom';
    peopleController.text = '0';
  }

  @override
  Widget build(BuildContext context) {
    void changePercentage(int val) {
      percentage = val;
      customController.text = 'Custom';

      caclulate();
    }

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
                      onChange: caclulate,
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
                            TableRow(
                              children: [
                                PercentageButton(
                                  title: '5',
                                  change: changePercentage,
                                ),
                                PercentageButton(
                                  title: '10',
                                  change: changePercentage,
                                )
                              ],
                            ),
                            TableRow(
                              children: [
                                PercentageButton(
                                  title: '15',
                                  change: changePercentage,
                                ),
                                PercentageButton(
                                  title: '25',
                                  change: changePercentage,
                                )
                              ],
                            ),
                            TableRow(
                              children: [
                                PercentageButton(
                                  title: '50',
                                  change: changePercentage,
                                ),
                                CustomButton(
                                  onChange: caclulate,
                                  controller: customController,
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        FormWidget(
                          onChange: caclulate,
                          title: 'Number of People',
                          controller: peopleController,
                          prefixIconPath: 'assets/images/icon-person.svg',
                        ),
                        ResultWidget(
                          reset: reset,
                        )
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
