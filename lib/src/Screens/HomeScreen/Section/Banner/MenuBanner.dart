// ignore_for_file: file_names

import 'package:ako_shop/src/Models/MenuBannerModel.dart';
import 'package:flutter/material.dart';

import '../../../../Localization/LanguageConstants.dart';

class MenuBanner extends StatelessWidget {
  const MenuBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MenuBannerModel> listMenu = [
      MenuBannerModel(
          title: getTranslated(context, 'MENU_BANNER_FREE_SHIPPING')!,
          image: "assets/image/menu/free_shipping.png"),
      MenuBannerModel(
          title: getTranslated(context, 'MENU_BANNER_AKOISHOP_TREND_HIT')!,
          image: "assets/image/menu/hit_new.png"),
      MenuBannerModel(
          title: getTranslated(context, 'MENU_BANNER_AKOISHOP_MALL')!,
          image: "assets/image/menu/shopping_mall.png"),
      MenuBannerModel(
          title: getTranslated(context, 'MENU_BANNER_AKOISHOP_ELECTRONICS')!,
          image: "assets/image/menu/electronics.png"),
      MenuBannerModel(
          title: getTranslated(context, 'MENU_BANNER_HOBBIES_LIFESTYLE')!,
          image: "assets/image/menu/lifestyle.png"),
      MenuBannerModel(
          title: getTranslated(context, 'MENU_BANNER_FREE_GIFT_VOUCHERS')!,
          image: "assets/image/menu/free_gift_vouchers.png"),
      MenuBannerModel(
          title: getTranslated(context, 'MENU_BANNER_SUPERMARKET')!,
          image: "assets/image/menu/supermarket.png"),
      MenuBannerModel(
          title: getTranslated(context, 'MENU_BANNER_COINS_REWARDS')!,
          image: "assets/image/menu/coins_rewards.png"),
      MenuBannerModel(
          title: getTranslated(context, 'MENU_BANNER_AKOISHOP_HOME')!,
          image: "assets/image/menu/AkoiHome.png"),
      MenuBannerModel(
          title: getTranslated(context, 'MENU_BANNER_AKOISHOP_CHEAPEST')!,
          image: "assets/image/menu/AkoiCheapest.png"),
    ];
    return Container(
      height: 110,
      color: Colors.white,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 0.8,
        ),
        itemCount: listMenu.length,
        itemBuilder: (context, index) {
          final MenuBannerModel menu = listMenu[index];
          return Column(
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      // borderRadius: BorderRadius.circular(14),
                      // border: Border.all(width: 2, color: Colors.black12),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Image.asset(
                          menu.image.toString(),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                menu.title.toString(),
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
            ],
          );
        },
      ),
    );
  }
}
