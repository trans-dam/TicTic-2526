import 'package:dto/team.dart';
import 'package:flutter/material.dart';
import 'package:tictic/helpers/currency.dart';
import 'package:tictic/l10n/app_localizations.dart';

import '../../../constants/colors.dart';
import '../../../constants/fonts.dart';
import '../../../constants/sizes.dart';

class GroupCard extends StatelessWidget {
  const GroupCard({super.key, required this.team});

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
      margin: EdgeInsets.symmetric(
        horizontal: kHorizontalPadding,
        vertical: kVerticalPadding,
      ),
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
              Text("1200€"),
            ],
          ),
          SizedBox(height: kVerticalPaddingS),
          Row(
            children: [
              ClipOval(
                child: team.picturePath != null
                    ? Image.asset(
                        team.picturePath!,
                        width: kProfilSizeImage,
                        height: kProfilSizeImage,
                        fit: BoxFit.cover,
                      )
                    : Container(
                        width: kProfilSizeImage,
                        height: kProfilSizeImage,
                        color: kTertiaryColor,
                        child: Icon(Icons.group, color: kBackgroundColorCard),
                      ),
              ),
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
                          currencyFormat.format(team.getSum()).toString(),
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
