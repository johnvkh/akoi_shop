// ignore_for_file: file_names, camel_case_types
import 'package:ako_shop/src/Utility/Components/IconButtonWidget.dart';
import 'package:ako_shop/src/Utility/Components/IconNotificationButtonWidget.dart';
import 'package:flutter/material.dart';
import '../../../../../Utility/Components/TextButtonWidget.dart';
import 'Components/buildBuildInputSearch.dart';

class SectionSearch extends StatelessWidget {
  const SectionSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          IconButtonWidget(
            press: () {},
            widgetIcon: const Icon(
              Icons.shopping_bag_rounded,
              size: 50,
              color: Colors.white,
            ),
          ),
          //Container(width: 50,height: 40,child: Image.asset("assets/image/shopping.png",)),
          const SizedBox(width: 8),
          TextButtonWidget(
            onPass: () {},
            content: "Akoi Shop",
            color1: Colors.white,
            color2: Colors.white38,
            fontSize: 24,
            fontWeight: FontWeight.w300,
          ),
          const SizedBox(width: 12),
          const buildBuildInputSearch(),
          const SizedBox(width: 50),
          IconNotificationButtonWidget(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_sharp,
              size: 30,
              color: Colors.white,
            ),
            notificaton: 2,
          ),
        ],
      ),
    );
  }
}
