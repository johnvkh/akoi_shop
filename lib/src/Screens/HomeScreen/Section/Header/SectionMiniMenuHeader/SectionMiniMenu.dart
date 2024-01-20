// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../../../../../Localization/LanguageConstants.dart';
import '../../../../../Utility/Components/TextButtonWidget.dart';

class SectionMiniMenu extends StatelessWidget {
  const SectionMiniMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButtonWidget(
          onPass: () {},
          content: getTranslated(context, 'MINI_MENU_SHIRT')!,
          color1: Colors.white,
          color2: Colors.white38,
          fontSize: 13,
          fontWeight: FontWeight.w300,
        ),
        const SizedBox(width: 10),
        TextButtonWidget(
          onPass: () {},
          content: getTranslated(context, 'MINI_MENU_NEW_PRODUCT')!,
          color1: Colors.white,
          color2: Colors.white38,
          fontSize: 13,
          fontWeight: FontWeight.w300,
        ),
        const SizedBox(width: 10),
        TextButtonWidget(
          onPass: () {},
          content: getTranslated(context, 'MINI_MENU_SWEATER')!,
          color1: Colors.white,
          color2: Colors.white38,
          fontSize: 13,
          fontWeight: FontWeight.w300,
        ),
        const SizedBox(width: 10),
        TextButtonWidget(
          onPass: () {},
          content: getTranslated(context, 'MINI_MENU_PANTS')!,
          color1: Colors.white,
          color2: Colors.white38,
          fontSize: 13,
          fontWeight: FontWeight.w300,
        ),
        const SizedBox(width: 10),
        TextButtonWidget(
          onPass: () {},
          content: getTranslated(context, 'MINI_MENU_WOMEN_CARGO_PANTS')!,
          color1: Colors.white,
          color2: Colors.white38,
          fontSize: 13,
          fontWeight: FontWeight.w300,
        ),
        const SizedBox(width: 10),
        TextButtonWidget(
          onPass: () {},
          content: getTranslated(context, 'MINI_MENU_MEN_SHOES')!,
          color1: Colors.white,
          color2: Colors.white38,
          fontSize: 13,
          fontWeight: FontWeight.w300,
        ),
        const SizedBox(width: 10),
        TextButtonWidget(
          onPass: () {},
          content: getTranslated(context, 'MINI_MENU_WOMEN_SHOES')!,
          color1: Colors.white,
          color2: Colors.white38,
          fontSize: 13,
          fontWeight: FontWeight.w300,
        ),
        const SizedBox(width: 10),
        TextButtonWidget(
          onPass: () {},
          content: getTranslated(context, 'MINI_MENU_CASE')!,
          color1: Colors.white,
          color2: Colors.white38,
          fontSize: 13,
          fontWeight: FontWeight.w300,
        ),
        const SizedBox(width: 10),
        TextButtonWidget(
          onPass: () {},
          content: getTranslated(context, 'MINI_MENU_WATCHES')!,
          color1: Colors.white,
          color2: Colors.white38,
          fontSize: 13,
          fontWeight: FontWeight.w300,
        ),
        const SizedBox(width: 10),
        TextButtonWidget(
          onPass: () {},
          content: getTranslated(context, 'MINI_MENU_GLASSES')!,
          color1: Colors.white,
          color2: Colors.white38,
          fontSize: 13,
          fontWeight: FontWeight.w300,
        ),
        const SizedBox(width: 10),
        TextButtonWidget(
          onPass: () {},
          content: getTranslated(context, 'MINI_MENU_BAGS')!,
          color1: Colors.white,
          color2: Colors.white38,
          fontSize: 13,
          fontWeight: FontWeight.w300,
        ),
      ],
    );
  }
}
