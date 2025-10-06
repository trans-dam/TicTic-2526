import 'package:flutter/material.dart';
import 'package:tictic/constants/sizes.dart';

import '../../../constants/fonts.dart';
import '../../../l10n/app_localizations.dart';
import 'bullet.dart';

class TextSlider extends StatefulWidget {
  const TextSlider({super.key});

  @override
  State<TextSlider> createState() => _TextSliderState();
}

class _TextSliderState extends State<TextSlider> {
  final _pageViewController = PageController(viewportFraction: 1);

  int idx = 0;

  late final _items = [
    AppLocalizations.of(context)!.text_slide_1,
    AppLocalizations.of(context)!.text_slide_2,
    AppLocalizations.of(context)!.text_slide_3,
    AppLocalizations.of(context)!.text_slide_4,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: kTextSliderHeight,
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
