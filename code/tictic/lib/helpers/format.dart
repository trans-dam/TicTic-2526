import 'package:intl/intl.dart';

final currencyFormat = NumberFormat.currency(
    locale: 'eu',
    customPattern: '#,### \u00a4',
    symbol: '€',
    decimalDigits: 2);

final dateFormat = DateFormat('dd/MM/yyyy');