import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tictic/constants/fonts.dart';
import 'package:tictic/constants/sizes.dart';
import 'package:tictic/screens/home/widgets/stat_slider.dart';
import 'package:tictic/screens/welcome/welcome_screen.dart';

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
            child: Image.asset("assets/img/dog.png", height: kProfilSizeImage),
          ),
          SizedBox(width: kHorizontalPadding),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kHorizontalPadding,
              ),
              child: Row(
                children: [Text('Bonjour, Daniel !', style: kTitleHome)],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kHorizontalPadding,
              ),
              child: Row(
                children: [Text("On vous doit de l’argent", style: kTagLine)],
              ),
            ),
            SizedBox(height: kVerticalPaddingXL),
            StatSlider(),
          ],
        ),
      ),
    );
  }
}
