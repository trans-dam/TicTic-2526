import 'package:dto/my_transaction.dart';
import 'package:flutter/material.dart';
import 'package:tictic/helpers/format.dart';

import '../../../constants/colors.dart';
import '../../../constants/fonts.dart';
import '../../../constants/sizes.dart';
import '../../../l10n/app_localizations.dart';

class TeamTransaction extends StatelessWidget {
  const TeamTransaction({super.key, required this.transactions});

  final List<MyTransaction> transactions;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      childrenPadding: EdgeInsets.zero,
      tilePadding: EdgeInsets.zero,
      dense: true,
      visualDensity: VisualDensity.compact,
      shape: LinearBorder.none,
      collapsedShape: LinearBorder.none,
      initiallyExpanded: true,
      title: Text(AppLocalizations.of(context)!.hidde_transactions),
      children: transactions.map((transaction) {
        return Container(
          margin: EdgeInsets.only(bottom: kVerticalPaddingS),
          padding: EdgeInsets.symmetric(
            horizontal: kHorizontalPadding,
            vertical: kVerticalPaddingXS,
          ),
          decoration: BoxDecoration(
            color: kBackgroundColorCard,
            borderRadius: BorderRadius.circular(kBorderRadiusXS),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(dateFormat.format(transaction.date), style: kSmallText),
              Text("${transaction.title.substring(0,13)}...", style: kSmallText),
              Text(currencyFormat.format(transaction.amount), style: kSmallText),
            ],
          ),
        );
      }).toList(),
    );
  }
}
