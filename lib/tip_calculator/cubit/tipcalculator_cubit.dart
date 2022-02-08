import 'package:bloc/bloc.dart';
part 'tipcalculator_state.dart';

class TipCalculatorCubit extends Cubit<TipCaclulatorState> {
  TipCalculatorCubit()
      : super(TipCaclulatorState(tipPerPerson: '0', totalPerPerson: '0'));

  void calculate(double bill, int percentage, int count) {
    state.tipPerPerson =
        ((bill * (percentage / 100)) / count).toStringAsFixed(2);

    state.totalPerPerson =
        ((bill / count) + double.parse(state.tipPerPerson)).toStringAsFixed(2);
    emit(TipCaclulatorState(
        tipPerPerson: state.tipPerPerson,
        totalPerPerson: state.totalPerPerson));
  }

  void reset() {
    emit(TipCaclulatorState(tipPerPerson: '0', totalPerPerson: '0'));
  }
}
