import 'package:dto/team.dart';
import 'package:flutter/material.dart';
import 'package:tictic/l10n/app_localizations.dart';
import 'package:tictic/screens/home/widgets/team_picture.dart';

import '../../../constants/colors.dart';
import '../../../constants/fonts.dart';
import '../../../constants/sizes.dart';
import '../../../helpers/format.dart';

class TeamCard extends StatelessWidget {
  const TeamCard({super.key, required this.team});

  final Team team;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kBorderRadiusS),
        color: kBackgroundColorCard,
        boxShadow: [kShadow],
      ),
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: kHorizontalPadding,
        vertical: kVerticalPaddingS,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(child: Text(team.title, style: kLabelStyle)),
              Text(currencyFormat.format(team.getSum()).toString()),
            ],
          ),
          SizedBox(height: kVerticalPaddingS),
          Row(
            children: [
              TeamPicture(path: team.picturePath),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: kHorizontalPaddingS),
                        Expanded(
                          child: team.tags != null
                              ? Text(
                                  "#${team.tags!.join("#")}",
                                  style: kSmallText,
                                )
                              : SizedBox(),
                        ),
                        Text(
                          currencyFormat
                              .format(team.myTransactions?[0].amount)
                              .toString(),
                          style: kLabelStyle,
                        ),
                      ],
                    ),
                    SizedBox(height: kVerticalPaddingXS),
                    Padding(
                      padding: const EdgeInsets.only(left: kHorizontalPaddingS),
                      child: Text(
                        "${team.users.length} ${AppLocalizations.of(context)!.participants}",
                        style: kSmallText,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
