import 'package:dto/user.dart';

class MyTransaction {
  final String title;
  final String? description;
  final double amount;
  final DateTime date;
  final User owner;
  final List<User> concerns;

  const MyTransaction({
    required this.title,
    this.description,
    required this.amount,
    required this.date,
    required this.owner,
    this.concerns = const [],
  });

}
