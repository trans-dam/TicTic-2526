import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tictic/constants/colors.dart';
import 'package:tictic/constants/sizes.dart';
import 'package:tictic/data/teams.dart';
import 'package:tictic/screens/home/widgets/group_card.dart';
import 'package:tictic/screens/home/widgets/home_sub_title.dart';
import 'package:tictic/screens/home/widgets/home_title.dart';
import 'package:tictic/screens/home/widgets/stat_slider.dart';
import 'package:tictic/screens/welcome/welcome_screen.dart';
import 'package:tictic/widgets/title_sec.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static final String routeName = '/home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Réglages'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.group),
                title: const Text('Créer un groupe'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.person_add_alt_1),
                title: const Text('Inviter une personne'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.add),
                title: const Text('Ajouter une transaction'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('Se déconnecter'),
                onTap: () async {
                  await FirebaseAuth.instance.signOut();
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    WelcomeScreen.routeName,
                    (route) => false,
                  );
                },
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        actions: [
          ClipOval(
            child: SvgPicture.asset(
              colorFilter: ColorFilter.mode(kBackgroundColorCard, BlendMode.srcIn),
              "assets/icons/logo.svg",
              width: kProfilSizeImage,
              height: kProfilSizeImage,
            ),
          ),
          SizedBox(width: kHorizontalPadding),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: kVerticalPaddingL),
            ClipOval(
              child: Image.asset("assets/img/dog.png", height: kProfileSize),
            ),
            SizedBox(height: kVerticalPaddingL),
            HomeTitle(),
            HomeSubTitle(),
            SizedBox(height: kVerticalPaddingL),
            StatSlider(),
            SizedBox(height: kVerticalPaddingL),
            TitleSec(title: "Vos groupes"),
            Column(
              children: teams.map((team) {
                return GroupCard(team: team);
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
