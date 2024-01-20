// ignore_for_file: file_names
import 'package:ako_shop/src/Screens/HomeScreen/Section/Header/TopMenuHeader/Components/buildLanguageWidget.dart';
import 'package:ako_shop/src/Utility/ConstantLocal.dart';
import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';

import '../../../../../Localization/LanguageConstants.dart';
import '../../../../../Utility/Components/IconButtonWidget.dart';
import '../../../../../Utility/Components/TextButtonWidget.dart';
import 'Components/buildHelpWidget.dart';
import 'Components/buildNotificationWidget.dart';

class SectionTopMenuHeader extends StatelessWidget {
  const SectionTopMenuHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const vertacaDivider = VerticalDivider(
      indent: 5,
      endIndent: 5,
      thickness: 1.5,
      color: Colors.white38,
    );
    return IntrinsicHeight(
      child: Row(
        children: [
          TextButtonWidget(
            onPass: () {},
            content: getTranslated(context, 'SELLER_CENTRE')!,
            color1: Colors.white,
            color2: Colors.white38,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
          vertacaDivider,
          TextButtonWidget(
            onPass: () {},
            content: getTranslated(context, 'START_SELL_PRODUCT')!,
            color1: Colors.white,
            color2: Colors.white38,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
          vertacaDivider,
          TextButtonWidget(
            onPass: () {},
            content: getTranslated(context, 'DOWNLOAD')!,
            color1: Colors.white,
            color2: Colors.white38,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
          vertacaDivider,
          Text(
            getTranslated(context, 'FOLLOW_US_ON')!,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w300,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 6),
          IconButtonWidget(
            press: () {},
            widgetIcon: const Align(
              alignment: Alignment.topCenter,
              child: Icon(
                FontAwesomeIcons.facebookSquare,
                color: Colors.white,
                size: socialIconSize,
              ),
            ),
          ),
          const SizedBox(width: 6),
          IconButtonWidget(
            press: () {},
            widgetIcon: const Align(
              alignment: Alignment.topCenter,
              child: Icon(
                FontAwesomeIcons.instagramSquare,
                color: Colors.white,
                size: socialIconSize,
              ),
            ),
          ),
          const SizedBox(width: 6),
          IconButtonWidget(
            press: () {},
            widgetIcon: const Align(
              alignment: Alignment.topCenter,
              child: Icon(
                FontAwesomeIcons.line,
                color: Colors.white,
                size: socialIconSize,
              ),
            ),
          ),
          const Expanded(child: SizedBox()),
          const buildNotificationWidget(),
          const SizedBox(width: 8),
          const buildHelpWidget(),
          const SizedBox(width: 8),
          const buildLanguageWidget(),
          const SizedBox(width: 20),
          TextButtonWidget(
            onPass: () {},
            content: getTranslated(context, 'SIGN_UP')!,
            color1: Colors.white,
            color2: Colors.white38,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
          vertacaDivider,
          TextButtonWidget(
            onPass: () {},
            content: getTranslated(context, 'SIGN_IN')!,
            color1: Colors.white,
            color2: Colors.white38,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
        ],
      ),
    );
  }
}
