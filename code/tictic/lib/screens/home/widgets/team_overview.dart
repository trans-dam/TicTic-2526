import 'package:dto/team.dart';
import 'package:flutter/material.dart';
import 'package:tictic/constants/sizes.dart';
import 'package:tictic/screens/home/widgets/team_card.dart';
import 'package:tictic/screens/home/widgets/team_transaction.dart';

class TeamOverview extends StatelessWidget {
  const TeamOverview({super.key, required this.team});

  final Team team;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TeamCard(team: team),
          team.myTransactions!=null ? TeamTransaction(transactions : team.myTransactions!.sublist(0, team.myTransactions!.length > 3 ? 3 : team.myTransactions!.length)):SizedBox(),
          SizedBox(height: kVerticalPaddingL),
        ],
      ),
    );
  }
}
