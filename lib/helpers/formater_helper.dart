import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:intl/intl.dart';

String formatQtdToString(double valor) => NumberFormat('########0.000', 'pt_br').format(valor);
String formatDecimalToString(double valor) => NumberFormat('########0.00', 'pt_br').format(valor);
String formatDateToString(DateTime data) => DateFormat("dd/MM/yyyy").format(data);
double formatStringToDecimal(String value) => double.tryParse(value.replaceAll('.', '').replaceAll(',', '.')) ?? 0;

CurrencyTextInputFormatter formatInputValue() => CurrencyTextInputFormatter(decimalDigits: 2, locale: 'pt_br', symbol: '', turnOffGrouping: false);
CurrencyTextInputFormatter formatInputQtd() => CurrencyTextInputFormatter(decimalDigits: 3, locale: 'pt_br', symbol: '');
