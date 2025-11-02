import 'package:flutter/material.dart';
import 'package:tictic/screens/home/widgets/stat_card.dart';

class StatSlider extends StatelessWidget {
  const StatSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Image.asset("assets/img/back-slider.png").image,
          fit: BoxFit.cover,
        ),
      ),
      height: 140,
      child: PageView(
        padEnds: false,
        controller: PageController(viewportFraction: 0.45),
        scrollDirection: Axis.horizontal,
        children: [
          StatCard(title: "Total à payer", subtitle: "80.03€"),
          StatCard(title: "Total à reçevoir", subtitle: "120.14€"),
          StatCard(title: "Total transactions", subtitle: "1500.87€"),
        ],
      ),
    );
  }
}
