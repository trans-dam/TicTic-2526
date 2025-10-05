import 'package:flutter/material.dart';
import 'package:tictic/constants/colors.dart';
import 'package:tictic/constants/sizes.dart';
import 'package:tictic/screens/welcome/widgets/action_buttons.dart';
import 'package:tictic/screens/welcome/widgets/horizontal_diver_with_text.dart';
import 'package:tictic/screens/welcome/widgets/svg_logo.dart';
import 'package:tictic/screens/welcome/widgets/text_slider.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  static final String routeName = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/back1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: kVerticalPaddingXL),
              SvgLogo(),
              Spacer(),
              SizedBox(height: kVerticalPaddingXL),
              TextSlider(),
              Spacer(),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: kMainColor),
                child: Text("Continuer sans compte"),
              ),
              HorizontalDiverWithText(text: "Ou"),
              ActionButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
