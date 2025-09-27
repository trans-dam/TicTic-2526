import 'package:flutter/material.dart';
import 'package:tictic/constants/sizes.dart';
import 'package:tictic/widgets/welcome/bullet.dart';

import '../../constants/fonts.dart';

class TextSlider extends StatefulWidget {
  const TextSlider({super.key});

  @override
  State<TextSlider> createState() => _TextSliderState();
}

class _TextSliderState extends State<TextSlider> {
  final _pageViewController = PageController(viewportFraction: 1);

  int idx = 0;

  final _items = [
    'L’harmonie financière dans vos groupes, en toute simplicité !',
    'Calculs instantanés, équité garantie avec TicTic !',
    'Calculs fastidieux ? Non merci. Optez pour la simplicité avec TicTic !',
    'TicTic : Vos dépenses partagées en toute simplicité !',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          child: PageView.builder(
            itemCount: _items.length,
            controller: _pageViewController,
            onPageChanged: (int page) {
              setState(() {
                idx = page;
              });
            },
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kHorizontalPadding,
                ),
                child: Text(
                  _items[index],
                  textAlign: TextAlign.center,
                  style: kTagLine,
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: _items.map((item) {
              return GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  _pageViewController.animateToPage(
                    _items.indexOf(item),
                    curve: Curves.easeInOut,
                    duration: const Duration(milliseconds: 250),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: kVerticalPaddingL,
                  ),
                  child: Bullet(
                    isActivated: _items.indexOf(item) == idx ? true : false,
                    width:
                        (MediaQuery.of(context).size.width -
                            kHorizontalPaddingXXL) /
                        _items.length,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
