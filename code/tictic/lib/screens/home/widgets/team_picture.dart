import 'package:flutter/material.dart';
import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

class TeamPicture extends StatelessWidget {
  const TeamPicture({super.key, this.path});

  final String? path;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: path != null
          ? Image.asset(
              path!,
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
    );
  }
}
